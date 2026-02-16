-- SQL Schema for Regions
CREATE TABLE IF NOT EXISTS Region (
    name VARCHAR(30) PRIMARY KEY
);


-- SQL Schema for Country
CREATE TABLE IF NOT EXISTS Country (
    ioc CHAR(3) PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    region VARCHAR(30) NOT NULL,

    CONSTRAINT fk_region
        FOREIGN KEY (region) REFERENCES Region(name) ON UPDATE CASCADE
);


-- SQL Schema for Teams
CREATE TABLE IF NOT EXISTS Team (
    name VARCHAR(100) PRIMARY KEY,
    ioc CHAR(3) NOT NULL,

    CONSTRAINT fk_country 
        FOREIGN KEY (ioc) REFERENCES Country(ioc) 
        ON UPDATE CASCADE
);


-- SQL Schema for Riders
CREATE TABLE IF NOT EXISTS Rider (
    bib INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    team VARCHAR(100),
    ioc CHAR(3),

    CONSTRAINT fk_team 
        FOREIGN KEY (team) REFERENCES Team(name) 
        ON UPDATE CASCADE
    ,
    CONSTRAINT fk_country 
        FOREIGN KEY (ioc) REFERENCES Country(ioc) 
        ON UPDATE CASCADE
);

-- SQL Schema for Locations
CREATE TABLE IF NOT EXISTS Location (
    name VARCHAR(100) PRIMARY KEY,
    ioc CHAR(3) NOT NULL,

    CONSTRAINT fk_country 
        FOREIGN KEY (ioc) REFERENCES Country(ioc) 
        ON UPDATE CASCADE
);

-- SQL Schema for Stage
CREATE TABLE IF NOT EXISTS Stage (
    stage_no INT PRIMARY KEY,
    date DATE UNIQUE NOT NULL,
    start_location VARCHAR(100) NOT NULL,
    finish_location VARCHAR(100) NOT NULL,
    distance NUMERIC NOT NULL 
        CHECK (distance > 0),
    type VARCHAR(32) NOT NULL
        CHECK (type IN ('flat', 'hilly', 'mountain', 'individual time-trial', 'team time-trial')),

    CONSTRAINT fk_start_location 
        FOREIGN KEY (start_location) REFERENCES Location(name) 
        ON UPDATE CASCADE,
    CONSTRAINT fk_finish_location 
        FOREIGN KEY (finish_location) REFERENCES Location(name) 
        ON UPDATE CASCADE
);

-- SQL Schema for Rider Result
CREATE TABLE IF NOT EXISTS Result (
    stage_no INT NOT NULL,
    bib INT NOT NULL,
    time INT NOT NULL CHECK (time >= 0),
    bonus INT DEFAULT 0 CHECK (bonus >= 0),
    penalty INT DEFAULT 0 CHECK (penalty >= 0),
    rank INT NOT NULL CHECK (rank > 0),

    CONSTRAINT fk_stage_no 
        FOREIGN KEY (stage_no) REFERENCES Stage(stage_no) 
        ON UPDATE CASCADE
    ,
    CONSTRAINT fk_bib 
        FOREIGN KEY (bib) REFERENCES Rider(bib) 
        ON UPDATE CASCADE
    ,
    CONSTRAINT unique_rank_per_stage 
        UNIQUE (stage_no, rank)
    ,
    PRIMARY KEY (stage_no, bib)
);

CREATE TABLE IF NOT EXISTS Rider_Exit (
    rider INT PRIMARY KEY,
    stage INT NOT NULL,
    reason VARCHAR(32) NOT NULL CHECK (reason IN ('withdrawal', 'DNS')),

    CONSTRAINT fk_stage 
        FOREIGN KEY (stage) REFERENCES Stage (stage_no) ON UPDATE CASCADE
);
