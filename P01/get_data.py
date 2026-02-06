import pandas as pd

OUTPUT_FILE = "data.sql"


def as_str(v):
    """
    Return the value as a string that can be
    accepted by postgresql as string.
    """

    if pd.isna(v):
        return 'NULL'

    s = f'{v}'.replace("'", "''")
    return f"'{s}'"


def read_csv(file):
    return pd.read_csv(file)


def clean(file):
    with open(file, 'w') as f:
        f.write("")


def write_region_data(file, data):
    regions = data[['rider_region', 'start_region', 'finish_region',
                    'team_region']].stack().drop_duplicates().reset_index(drop=True)

    with open(file, 'a') as f:
        f.write("-- Insert Regions Data\n")
        for region in regions:
            f.write(f"INSERT INTO Region VALUES ('{region}');\n")

        f.write("\n\n")


def write_country_data(file, data):
    countries = pd.concat([
        data[['rider_country_code', 'rider_country_name', 'rider_region']].rename(columns={
            'rider_country_code': 'code',
            'rider_country_name': 'name',
            'rider_region': 'region'
        }),
        data[['start_country_code', 'start_country_name', 'start_region']].rename(columns={
            'start_country_code': 'code',
            'start_country_name': 'name',
            'start_region': 'region'
        }),
        data[['finish_country_code', 'finish_country_name', 'finish_region']].rename(columns={
            'finish_country_code': 'code',
            'finish_country_name': 'name',
            'finish_region': 'region'
        }),
        data[['team_country_code', 'team_country_name', 'team_region']].rename(columns={
            'team_country_code': 'code',
            'team_country_name': 'name',
            'team_region': 'region'
        })
    ]).drop_duplicates().dropna().reset_index(drop=True)

    with open(file, 'a') as f:
        f.write("-- Insert Countries Data\n")
        for country in countries.itertuples(index=False):
            f.write(
                f"INSERT INTO Country VALUES ({as_str(country.code)}, {as_str(country.name)}, {as_str(country.region)});\n")

        f.write("\n\n")


def write_team_data(file, data):
    teams = data[['team', 'team_country_code']
                 ].drop_duplicates().reset_index(drop=True)
    with open(file, 'a') as f:
        f.write("-- Insert Teams Data\n")
        for team in teams.itertuples(index=False):
            f.write(
                f"INSERT INTO Team VALUES ({as_str(team.team)}, {as_str(team.team_country_code)});\n")

        f.write("\n\n")


def write_rider_data(file, data):
    riders = data[['bib', 'rider', 'dob', 'team', 'rider_country_code']
                  ].drop_duplicates().reset_index(drop=True)
    with open(file, 'a') as f:
        f.write("-- Insert Riders Data\n")
        for rider in riders.itertuples(index=False):
            f.write(
                f"INSERT INTO Rider VALUES ({rider.bib}, {as_str(rider.rider)}, {as_str(rider.dob)}, {as_str(rider.team)}, {as_str(rider.rider_country_code)});\n")

        f.write("\n\n")


def write_location_data(file, data):
    locations = pd.concat([
        data[['start_location', 'start_country_code']].rename(
            columns={'start_location': 'location', 'start_country_code': 'country'}),
        data[['finish_location', 'finish_country_code']].rename(
            columns={'finish_location': 'location', 'finish_country_code': 'country'})
    ]).drop_duplicates().reset_index(drop=True)

    with open(file, 'a') as f:
        f.write("-- Insert Locations Data\n")
        for location in locations.itertuples(index=False):
            f.write(
                f"INSERT INTO Location VALUES ({as_str(location.location)}, {as_str(location.country)});\n")

        f.write("\n\n")


def write_stage_data(file, data):
    stages = data[['stage', 'day', 'start_location', 'finish_location', 'length', 'type'
                   ]].drop_duplicates().reset_index(drop=True)

    with open(file, 'a') as f:
        f.write("-- Insert Stages Data\n")
        for stage in stages.itertuples(index=False):
            f.write(
                f"INSERT INTO Stage VALUES ({stage.stage}, {as_str(stage.day)}, {as_str(stage.start_location)}, {as_str(stage.finish_location)}, {stage.length}, {as_str(stage.type)});\n")

        f.write("\n\n")


def write_riders_results_data(file, data):
    results = data[['stage', 'bib', 'time', 'bonus', 'penalty', 'rank'
                    ]].drop_duplicates().reset_index(drop=True)

    with open(file, 'a') as f:
        f.write("-- Insert Riders_Results Data\n")
        for result in results.itertuples(index=False):
            f.write(
                f"INSERT INTO Result VALUES ({result.stage}, {result.bib}, {as_str(result.time)}, {result.bonus}, {result.penalty}, {result.rank});\n")
        f.write("\n\n")


def write_riders_exits_data(file, data_exit, data):
    processed = data_exit[['bib', 'stage', 'reason'
                           ]].drop_duplicates().reset_index(drop=True)

    dropped = processed[~processed['bib'].isin(data['bib'])]
    processed = processed[processed['bib'].isin(data['bib'])]
    print("Dropped bibs:", dropped['bib'].tolist())

    with open(file, 'a') as f:
        f.write("-- Insert Rider_Exit Data\n")
        for exit in processed.itertuples(index=False):
            f.write(
                f"INSERT INTO Rider_Exit VALUES ({exit.bib}, {exit.stage}, {as_str(exit.reason)});\n")
        f.write("\n\n")


if __name__ == "__main__":
    data = read_csv('tdf-2025.csv')

    stage_1_data = data[data['stage'] == 1]
    data_exit = read_csv('tdf-exits.csv')

    data = stage_1_data
    clean(OUTPUT_FILE)
    write_region_data(OUTPUT_FILE, data)
    write_country_data(OUTPUT_FILE, data)
    write_team_data(OUTPUT_FILE, data)
    write_rider_data(OUTPUT_FILE, data)
    write_location_data(OUTPUT_FILE, data)
    write_stage_data(OUTPUT_FILE, data)
    write_riders_results_data(OUTPUT_FILE, data)
    write_riders_exits_data(OUTPUT_FILE, data_exit, data)
