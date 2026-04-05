--
-- Group Number: 64
-- Group Members: 
--   1. Bharathimohan Kaviyan
--   2. Emry Daniel Bin Abdul Lathiff
--   3. Foo Kang
--   4. Mohamed Faras S/O Faridul Huk
--

-- The ranks for each stage should be consecutive numbers without any gaps according to §1.2.2. The best rank possible is rank 1, and the worst rank possible is the number of riders still competing in the stage.
CREATE OR REPLACE FUNCTION fn_check_rank()
RETURNS TRIGGER AS $$
DECLARE
  max_rank INTEGER;
  min_rank INTEGER;
  result_count INTEGER;
  active_riders INTEGER;
BEGIN

  -- Get the count of results for the stage, and the minimum and maximum rank for the stage
  SELECT COUNT(*), MIN(rank), MAX(rank)
  INTO result_count, min_rank, max_rank
  FROM results
  WHERE stage = NEW.stage;

  -- Get the count of active riders for the stage
  SELECT COUNT(*)
  INTO active_riders
  FROM riders
  WHERE bib NOT IN (
    SELECT rider 
    FROM riders_exits re
    WHERE re.stage <= NEW.stage
  );

  -- Ranks should start from 1
  IF min_rank IS NOT NULL AND min_rank <> 1 THEN
    RAISE EXCEPTION 'Minimum rank must be equal to 1';
  END IF;
  
  -- Ranks should be less than or equal to the number of active riders
  IF max_rank IS NOT NULL AND max_rank > active_riders THEN
    RAISE EXCEPTION 'Maximum rank must be less than or equal to the number of active riders';
  END IF;

  -- Ranks should be consecutive numbers without any gaps
  IF result_count > 0 AND (max_rank - min_rank + 1) != result_count THEN
    RAISE EXCEPTION 'Ranks must be consecutive numbers without any gaps';
  END IF;

  -- Check old results for the stage to ensure that the new rank does not create gaps
  IF TG_OP = 'UPDATE' AND NEW.stage <> OLD.stage THEN
    SELECT COUNT(*), MIN(rank), MAX(rank)
    INTO result_count, min_rank, max_rank
    FROM results
    WHERE stage = OLD.stage;

    SELECT COUNT(*)
    INTO active_riders
    FROM riders
    WHERE bib NOT IN (
      SELECT rider 
      FROM riders_exits re
      WHERE re.stage <= OLD.stage
    );

    IF min_rank IS NOT NULL AND min_rank <> 1 THEN
      RAISE EXCEPTION 'Update would violate minimum rank constraint: minimum rank must be equal to 1';
    END IF;

    IF max_rank IS NOT NULL AND max_rank > active_riders THEN
      RAISE EXCEPTION 'Update would violate maximum rank constraint: maximum rank must be less than or equal to the number of active riders';
    END IF;

    IF result_count > 0 AND (max_rank - min_rank + 1) != result_count THEN
      RAISE EXCEPTION 'Update would violate consecutive ranks constraint: ranks must be consecutive numbers without any gaps';
    END IF;
  END IF;

  RETURN NEW;
END
$$ LANGUAGE plpgsql;

-- The ranks for each stage must agree with the race time. If a rider A has a better rank than another rider B, then rider A’s race time (in seconds) must be less than or equal to that of rider B.
CREATE OR REPLACE FUNCTION fn_check_time_rank()
RETURNS TRIGGER AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM results r1
    JOIN results r2 
    ON r1.stage = r2.stage
    WHERE r1.stage = NEW.stage
      AND r1.rank < r2.rank
      AND r1.time > r2.time
  ) THEN
    RAISE EXCEPTION 'Ranks must agree with race time: if a rider has a better rank than another rider, then their race time must be less than or equal to that of the other rider';
  END IF;

  IF TG_OP = 'UPDATE' AND NEW.stage <> OLD.stage THEN
    IF EXISTS (
      SELECT 1
      FROM results r1
      JOIN results r2 
      ON r1.stage = r2.stage
      WHERE r1.stage = OLD.stage
        AND r1.rank < r2.rank
        AND r1.time > r2.time
    ) THEN
      RAISE EXCEPTION 'Update would violate time-rank consistency: if a rider has a better rank than another rider, then their race time must be less than or equal to that of the other rider';
    END IF;
  END IF;
  RETURN NEW;
END
$$ LANGUAGE plpgsql;

-- A rider who exits at some stage Sshould no longer be participating from stage S onwards according to §1.2.3.
CREATE OR REPLACE FUNCTION fn_check_rider_exit()
RETURNS TRIGGER AS $$
DECLARE
  exit_stage INTEGER;
BEGIN
  SELECT stage
  INTO exit_stage
  FROM riders_exits
  WHERE rider = NEW.rider;

  IF exit_stage IS NULL THEN
    RETURN NEW;
  END IF;

  IF EXISTS (
    SELECT 1
    FROM results r
    WHERE r.stage >= exit_stage
      AND r.rider = NEW.rider
  ) THEN
    RAISE EXCEPTION 'A rider who exits at some stage should no longer be participating from that stage onwards';
  END IF;
  
  RETURN NEW;
END
$$ LANGUAGE plpgsql;

-- There should not be consecutive rest days according to §1.2.4
CREATE OR REPLACE FUNCTION fn_check_consecutive_rest_days()
RETURNS TRIGGER AS $$
DECLARE
  cur CURSOR FOR
    SELECT s.day
    FROM stages s
    ORDER BY s.day;
  prev_day DATE;
  cur_day DATE;
BEGIN
  OPEN cur;
  prev_day := NULL;

  LOOP
    FETCH cur INTO cur_day;
    EXIT WHEN NOT FOUND;

    IF prev_day IS NOT NULL AND cur_day - prev_day > 2 THEN
      RAISE EXCEPTION 'There should not be consecutive rest days';
    END IF;

    prev_day := cur_day;
  END LOOP;
  CLOSE cur;

  RETURN NEW;
END
$$ LANGUAGE plpgsql;

-- There should be at most two rest days in total for the whole competition according to §1.2.4.
CREATE OR REPLACE FUNCTION fn_check_total_rest_days()
RETURNS TRIGGER AS $$
DECLARE
  cur CURSOR FOR
    SELECT s.day
    FROM stages s
    ORDER BY s.day;
  prev_day DATE;
  cur_day DATE;
  rest_day_count INTEGER;
BEGIN
  OPEN cur;
  prev_day := NULL;
  rest_day_count := 0;

  LOOP
    FETCH cur INTO cur_day;
    EXIT WHEN NOT FOUND;

    IF prev_day IS NOT NULL AND cur_day - prev_day <> 1 THEN
      rest_day_count := rest_day_count + (cur_day - prev_day - 1);
    END IF;
    prev_day := cur_day;
    IF rest_day_count > 2 THEN
      RAISE EXCEPTION 'There should be at most two rest days in total for the whole competition';
    END IF;
  END LOOP;
  CLOSE cur;
  RETURN NEW;
END
$$ LANGUAGE plpgsql;


CREATE CONSTRAINT TRIGGER check_rank
AFTER INSERT OR UPDATE ON results
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE fn_check_rank();

CREATE CONSTRAINT TRIGGER check_time_rank
AFTER INSERT OR UPDATE ON results
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE fn_check_time_rank();

CREATE CONSTRAINT TRIGGER check_rider_exit_on_exits
AFTER INSERT OR UPDATE ON riders_exits
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE fn_check_rider_exit();

CREATE CONSTRAINT TRIGGER check_rider_exit_on_results
AFTER INSERT OR UPDATE ON results
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE fn_check_rider_exit();

CREATE CONSTRAINT TRIGGER check_consecutive_rest_days
AFTER INSERT OR UPDATE ON stages
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE fn_check_consecutive_rest_days();

CREATE CONSTRAINT TRIGGER check_total_rest_days
AFTER INSERT OR UPDATE ON stages
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE fn_check_total_rest_days();