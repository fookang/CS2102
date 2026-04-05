--
-- Group Number: 64
-- Group Members: 
--   1. Bharathimohan Kaviyan
--   2. Emry Daniel Bin Abdul Lathiff
--   3. Foo Kang
--   4. Mohamed Faras S/O Faridul Huk
--

-- Insert countries, teams, riderss, riderss_from, locations, stages, and riders_exits for testing

BEGIN;
-- Insert countries Data
INSERT INTO countries VALUES ('BEL', 'Belgium', 'Europe');
INSERT INTO countries VALUES ('ERI', 'Eritrea', 'Africa');
INSERT INTO countries VALUES ('NOR', 'Norway', 'Europe');
INSERT INTO countries VALUES ('FRA', 'France', 'Europe');
INSERT INTO countries VALUES ('ITA', 'Italy', 'Europe');
INSERT INTO countries VALUES ('USA', 'United States of America', 'North America');
INSERT INTO countries VALUES ('GER', 'Germany', 'Europe');
INSERT INTO countries VALUES ('GBR', 'United Kingdom of Great Britain and Northern Ireland', 'Europe');
INSERT INTO countries VALUES ('NED', 'Netherlands, Kingdom of the', 'Europe');
INSERT INTO countries VALUES ('ESP', 'Spain', 'Europe');
INSERT INTO countries VALUES ('AUS', 'Australia', 'Oceania');
INSERT INTO countries VALUES ('LAT', 'Latvia', 'Europe');
INSERT INTO countries VALUES ('SLO', 'Slovenia', 'Europe');
INSERT INTO countries VALUES ('DEN', 'Denmark', 'Europe');
INSERT INTO countries VALUES ('AUT', 'Austria', 'Europe');
INSERT INTO countries VALUES ('CZE', 'Czechia', 'Europe');
INSERT INTO countries VALUES ('CAN', 'Canada', 'North America');
INSERT INTO countries VALUES ('POR', 'Portugal', 'Europe');
INSERT INTO countries VALUES ('IRL', 'Ireland', 'Europe');
INSERT INTO countries VALUES ('COL', 'Colombia', 'South America');
INSERT INTO countries VALUES ('SUI', 'Switzerland', 'Europe');
INSERT INTO countries VALUES ('ECU', 'Ecuador', 'South America');
INSERT INTO countries VALUES ('NZL', 'New Zealand', 'Oceania');
INSERT INTO countries VALUES ('POL', 'Poland', 'Europe');
INSERT INTO countries VALUES ('ARG', 'Argentina', 'South America');
INSERT INTO countries VALUES ('KAZ', 'Kazakhstan', 'Asia');
INSERT INTO countries VALUES ('ISR', 'Israel', 'Asia');
INSERT INTO countries VALUES ('UAE', 'United Arab Emirates', 'Asia');
INSERT INTO countries VALUES ('BRN', 'Bahrain', 'Asia');


-- Insert teams Data
INSERT INTO teams VALUES ('ALPECIN-DECEUNINCK', 'BEL');
INSERT INTO teams VALUES ('INTERMARCH� - WANTY', 'BEL');
INSERT INTO teams VALUES ('UNO-X MOBILITY', 'NOR');
INSERT INTO teams VALUES ('TOTALENERGIES', 'FRA');
INSERT INTO teams VALUES ('TUDOR PRO CYCLING TEAM', 'SUI');
INSERT INTO teams VALUES ('GROUPAMA-FDJ', 'FRA');
INSERT INTO teams VALUES ('TEAM VISMA | LEASE A BIKE', 'NED');
INSERT INTO teams VALUES ('INEOS GRENADIERS', 'GBR');
INSERT INTO teams VALUES ('XDS ASTANA TEAM', 'KAZ');
INSERT INTO teams VALUES ('MOVISTAR TEAM', 'ESP');
INSERT INTO teams VALUES ('TEAM PICNIC POSTNL', 'NED');
INSERT INTO teams VALUES ('EF EDUCATION - EASYPOST', 'USA');
INSERT INTO teams VALUES ('ISRAEL - PREMIER TECH', 'ISR');
INSERT INTO teams VALUES ('ARKEA-B&B HOTELS', 'FRA');
INSERT INTO teams VALUES ('COFIDIS', 'FRA');
INSERT INTO teams VALUES ('UAE TEAM EMIRATES XRG', 'UAE');
INSERT INTO teams VALUES ('LIDL-TREK', 'USA');
INSERT INTO teams VALUES ('TEAM JAYCO ALULA', 'AUS');
INSERT INTO teams VALUES ('LOTTO', 'BEL');
INSERT INTO teams VALUES ('RED BULL - BORA - HANSGROHE', 'GER');
INSERT INTO teams VALUES ('BAHRAIN VICTORIOUS', 'BRN');
INSERT INTO teams VALUES ('SOUDAL QUICK-STEP', 'BEL');
INSERT INTO teams VALUES ('DECATHLON AG2R LA MONDIALE TEAM', 'FRA');


-- Insert riders Data
INSERT INTO riders VALUES (101, 'Jasper Philipsen', '1998-03-02', 'ALPECIN-DECEUNINCK');
INSERT INTO riders VALUES (41, 'Biniam Girmay', '2000-04-02', 'INTERMARCH� - WANTY');
INSERT INTO riders VALUES (228, 'Soren Waerenskjold', '2000-03-12', 'UNO-X MOBILITY');
INSERT INTO riders VALUES (187, 'Anthony Turgis', '1994-05-16', 'TOTALENERGIES');
INSERT INTO riders VALUES (118, 'Matteo Trentin', '1989-08-02', 'TUDOR PRO CYCLING TEAM');
INSERT INTO riders VALUES (98, 'Cl�ment Russo', '1995-01-20', 'GROUPAMA-FDJ');
INSERT INTO riders VALUES (97, 'Paul Penhoet', '2001-12-28', 'GROUPAMA-FDJ');
INSERT INTO riders VALUES (15, 'Matteo Jorgenson', '1999-07-01', 'TEAM VISMA | LEASE A BIKE');
INSERT INTO riders VALUES (116, 'Marius Mayrhofer', '2000-09-18', 'TUDOR PRO CYCLING TEAM');
INSERT INTO riders VALUES (68, 'Samuel Watson', '2001-09-24', 'INEOS GRENADIERS');
INSERT INTO riders VALUES (177, 'Mike Teunissen', '1992-08-25', 'XDS ASTANA TEAM');
INSERT INTO riders VALUES (145, 'Ivan Garcia Cortina', '1995-11-20', 'MOVISTAR TEAM');
INSERT INTO riders VALUES (196, 'Niklas M�rkl', '1999-03-03', 'TEAM PICNIC POSTNL');
INSERT INTO riders VALUES (36, 'Harrison Sweeny', '1998-07-09', 'EF EDUCATION - EASYPOST');
INSERT INTO riders VALUES (207, 'Krists Neilands', '1994-08-18', 'ISRAEL - PREMIER TECH');
INSERT INTO riders VALUES (131, 'K�vin Vauquelin', '2001-04-26', 'ARKEA-B&B HOTELS');
INSERT INTO riders VALUES (168, 'Damien Touze', '1996-07-07', 'COFIDIS');
INSERT INTO riders VALUES (1, 'Tadej Pogacar', '1998-09-21', 'UAE TEAM EMIRATES XRG');
INSERT INTO riders VALUES (202, 'Pascal Ackermann', '1994-01-17', 'ISRAEL - PREMIER TECH');
INSERT INTO riders VALUES (11, 'Jonas Vingegaard', '1996-12-10', 'TEAM VISMA | LEASE A BIKE');
INSERT INTO riders VALUES (87, 'Jasper Stuyven', '1992-04-17', 'LIDL-TREK');
INSERT INTO riders VALUES (113, 'Marco Haller', '1991-04-01', 'TUDOR PRO CYCLING TEAM');
INSERT INTO riders VALUES (103, 'Kaden Groves', '1998-12-23', 'ALPECIN-DECEUNINCK');
INSERT INTO riders VALUES (33, 'Kasper Asgreen', '1995-02-08', 'EF EDUCATION - EASYPOST');
INSERT INTO riders VALUES (203, 'Joseph Blackmore', '2003-02-23', 'ISRAEL - PREMIER TECH');
INSERT INTO riders VALUES (125, 'Luka Mezgec', '1988-06-27', 'TEAM JAYCO ALULA');
INSERT INTO riders VALUES (13, 'Tiesj Benoot', '1994-03-11', 'TEAM VISMA | LEASE A BIKE');
INSERT INTO riders VALUES (106, 'Mathieu Van Der Poel', '1995-01-19', 'ALPECIN-DECEUNINCK');
INSERT INTO riders VALUES (224, 'Stian Edvardsen-Fredheim', '2003-03-23', 'UNO-X MOBILITY');
INSERT INTO riders VALUES (221, 'Tobias Johannessen', '1999-08-23', 'UNO-X MOBILITY');
INSERT INTO riders VALUES (141, 'Enric Mas', '1995-01-07', 'MOVISTAR TEAM');
INSERT INTO riders VALUES (7, 'Tim Wellens', '1991-05-10', 'UAE TEAM EMIRATES XRG');
INSERT INTO riders VALUES (93, 'Cyril Barthe', '1996-02-14', 'GROUPAMA-FDJ');
INSERT INTO riders VALUES (222, 'Jonas Abrahamsen', '1995-09-20', 'UNO-X MOBILITY');
INSERT INTO riders VALUES (105, 'Jonas Rickaert', '1994-02-07', 'ALPECIN-DECEUNINCK');
INSERT INTO riders VALUES (104, 'Xandro Meurisse', '1992-01-31', 'ALPECIN-DECEUNINCK');
INSERT INTO riders VALUES (172, 'Davide Ballerini', '1994-09-21', 'XDS ASTANA TEAM');
INSERT INTO riders VALUES (12, 'Edoardo Affini', '1996-06-24', 'TEAM VISMA | LEASE A BIKE');
INSERT INTO riders VALUES (81, 'Jonathan Milan', '2000-10-01', 'LIDL-TREK');
INSERT INTO riders VALUES (211, 'Arnaud De Lie', '2002-03-16', 'LOTTO');
INSERT INTO riders VALUES (163, 'Bryan Coquard', '1992-04-25', 'COFIDIS');
INSERT INTO riders VALUES (73, 'Jordi Meeus', '1998-07-01', 'RED BULL - BORA - HANSGROHE');
INSERT INTO riders VALUES (193, 'Pavel Bittner', '2002-10-29', 'TEAM PICNIC POSTNL');
INSERT INTO riders VALUES (112, 'Alberto Dainese', '1998-03-25', 'TUDOR PRO CYCLING TEAM');
INSERT INTO riders VALUES (57, 'Robert Stannard', '1998-09-16', 'BAHRAIN VICTORIOUS');
INSERT INTO riders VALUES (52, 'Phil Bauhaus', '1994-07-08', 'BAHRAIN VICTORIOUS');
INSERT INTO riders VALUES (24, 'Tim Merlier', '1992-10-30', 'SOUDAL QUICK-STEP');
INSERT INTO riders VALUES (17, 'Wout Van Aert', '1994-09-15', 'TEAM VISMA | LEASE A BIKE');
INSERT INTO riders VALUES (77, 'Danny Van Poppel', '1993-07-26', 'RED BULL - BORA - HANSGROHE');
INSERT INTO riders VALUES (35, 'Neilson Powless', '1996-09-03', 'EF EDUCATION - EASYPOST');
INSERT INTO riders VALUES (225, 'Markus Hoelgaard', '1994-10-04', 'UNO-X MOBILITY');
INSERT INTO riders VALUES (153, 'Cl�ment Berthet', '1997-08-02', 'DECATHLON AG2R LA MONDIALE TEAM');
INSERT INTO riders VALUES (195, 'Tobias Lund Andresen', '2002-02-08', 'TEAM PICNIC POSTNL');
INSERT INTO riders VALUES (85, 'Mattias Skjelmose', '2000-09-26', 'LIDL-TREK');
INSERT INTO riders VALUES (213, 'Jasper De Buyst', '1993-11-24', 'LOTTO');
INSERT INTO riders VALUES (161, 'Emanuel Buchmann', '1992-11-18', 'COFIDIS');
INSERT INTO riders VALUES (204, 'Guillaume Boivin', '1989-05-25', 'ISRAEL - PREMIER TECH');
INSERT INTO riders VALUES (2, 'Joao Almeida', '1998-08-05', 'UAE TEAM EMIRATES XRG');
INSERT INTO riders VALUES (132, 'Amaury Capiot', '1993-06-25', 'ARKEA-B&B HOTELS');
INSERT INTO riders VALUES (124, 'Dylan Groenewegen', '1993-06-21', 'TEAM JAYCO ALULA');
INSERT INTO riders VALUES (223, 'Magnus Cort Nielsen', '1993-01-16', 'UNO-X MOBILITY');
INSERT INTO riders VALUES (134, 'Arnaud Demare', '1991-08-26', 'ARKEA-B&B HOTELS');
INSERT INTO riders VALUES (165, 'Alexis Renard', '1999-06-01', 'COFIDIS');
INSERT INTO riders VALUES (31, 'Ben Healy', '2000-09-11', 'EF EDUCATION - EASYPOST');
INSERT INTO riders VALUES (205, 'Matis Louvel', '1999-07-19', 'ISRAEL - PREMIER TECH');
INSERT INTO riders VALUES (156, 'Aur�lien Paret Peintre', '1996-02-27', 'DECATHLON AG2R LA MONDIALE TEAM');
INSERT INTO riders VALUES (21, 'Remco Evenepoel', '2000-01-25', 'SOUDAL QUICK-STEP');
INSERT INTO riders VALUES (186, 'Jordan Jegat', '1999-06-07', 'TOTALENERGIES');
INSERT INTO riders VALUES (66, 'Carlos Rodriguez', '2001-02-02', 'INEOS GRENADIERS');
INSERT INTO riders VALUES (107, 'Gianni Vermeersch', '1992-11-19', 'ALPECIN-DECEUNINCK');
INSERT INTO riders VALUES (51, 'Santiago Buitrago', '1999-09-26', 'BAHRAIN VICTORIOUS');
INSERT INTO riders VALUES (37, 'Michael Valgren', '1992-02-07', 'EF EDUCATION - EASYPOST');
INSERT INTO riders VALUES (155, 'Oliver Naesen', '1990-09-16', 'DECATHLON AG2R LA MONDIALE TEAM');
INSERT INTO riders VALUES (191, 'Oscar Onley', '2002-10-13', 'TEAM PICNIC POSTNL');
INSERT INTO riders VALUES (151, 'F�lix Gall', '1998-02-27', 'DECATHLON AG2R LA MONDIALE TEAM');
INSERT INTO riders VALUES (28, 'Ilan Van Wilder', '2000-05-14', 'SOUDAL QUICK-STEP');
INSERT INTO riders VALUES (23, 'Pascal Eenkhoorn', '1997-02-08', 'SOUDAL QUICK-STEP');
INSERT INTO riders VALUES (72, 'Florian Lipowitz', '2000-09-21', 'RED BULL - BORA - HANSGROHE');
INSERT INTO riders VALUES (71, 'Primoz Roglic', '1989-10-29', 'RED BULL - BORA - HANSGROHE');
INSERT INTO riders VALUES (217, 'Lennert Van Eetvelt', '2001-07-17', 'LOTTO');
INSERT INTO riders VALUES (95, 'Valentin Madouas', '1996-07-12', 'GROUPAMA-FDJ');
INSERT INTO riders VALUES (91, 'Guillaume Martin Guyonnet', '1993-06-09', 'GROUPAMA-FDJ');
INSERT INTO riders VALUES (144, 'Nelson Oliveira', '1989-03-06', 'MOVISTAR TEAM');
INSERT INTO riders VALUES (115, 'Fabian Lienhard', '1993-09-03', 'TUDOR PRO CYCLING TEAM');
INSERT INTO riders VALUES (194, 'Sean Flynn', '2000-03-02', 'TEAM PICNIC POSTNL');
INSERT INTO riders VALUES (67, 'Connor Swift', '1995-10-30', 'INEOS GRENADIERS');
INSERT INTO riders VALUES (61, 'Geraint Thomas', '1986-05-25', 'INEOS GRENADIERS');
INSERT INTO riders VALUES (184, 'Thomas Gachignard', '2000-08-17', 'TOTALENERGIES');
INSERT INTO riders VALUES (3, 'Jhonatan Narvaez', '1997-03-04', 'UAE TEAM EMIRATES XRG');
INSERT INTO riders VALUES (44, 'Hugo Page', '2001-07-24', 'INTERMARCH� - WANTY');
INSERT INTO riders VALUES (181, 'Steff Cras', '1996-02-13', 'TOTALENERGIES');
INSERT INTO riders VALUES (158, 'Bastien Tronchon', '2002-03-29', 'DECATHLON AG2R LA MONDIALE TEAM');
INSERT INTO riders VALUES (183, 'Alexandre Delettre', '1997-10-25', 'TOTALENERGIES');
INSERT INTO riders VALUES (54, 'Jack Haig', '1993-09-06', 'BAHRAIN VICTORIOUS');
INSERT INTO riders VALUES (162, 'Alex Aranburu', '1995-09-19', 'COFIDIS');
INSERT INTO riders VALUES (114, 'Marc Hirschi', '1998-08-24', 'TUDOR PRO CYCLING TEAM');
INSERT INTO riders VALUES (212, 'Jenno Berckmoes', '2001-02-04', 'LOTTO');
INSERT INTO riders VALUES (166, 'Dylan Teuns', '1992-03-01', 'COFIDIS');
INSERT INTO riders VALUES (218, 'Brent Van Moer', '1998-01-12', 'LOTTO');
INSERT INTO riders VALUES (63, 'Tobias Foss', '1997-05-25', 'INEOS GRENADIERS');
INSERT INTO riders VALUES (58, 'Fred Wright', '1999-06-13', 'BAHRAIN VICTORIOUS');
INSERT INTO riders VALUES (214, 'Jarrad Drizners', '1999-05-31', 'LOTTO');
INSERT INTO riders VALUES (32, 'Vincenzo Albanese', '1996-11-12', 'EF EDUCATION - EASYPOST');
INSERT INTO riders VALUES (127, 'Elmar Reinders', '1992-03-14', 'TEAM JAYCO ALULA');
INSERT INTO riders VALUES (78, 'Aleksandr Vlasov', '1996-04-23', 'RED BULL - BORA - HANSGROHE');
INSERT INTO riders VALUES (157, 'Callum Scotson', '1996-08-10', 'DECATHLON AG2R LA MONDIALE TEAM');
INSERT INTO riders VALUES (192, 'Warren Barguil', '1991-10-28', 'TEAM PICNIC POSTNL');
INSERT INTO riders VALUES (56, 'Matej Mohoric', '1994-10-19', 'BAHRAIN VICTORIOUS');
INSERT INTO riders VALUES (34, 'Alex Baudin', '2001-05-25', 'EF EDUCATION - EASYPOST');
INSERT INTO riders VALUES (138, 'Cl�ment Venturini', '1993-10-16', 'ARKEA-B&B HOTELS');
INSERT INTO riders VALUES (27, 'Bert Van Lerberghe', '1992-09-29', 'SOUDAL QUICK-STEP');
INSERT INTO riders VALUES (86, 'Toms Skujins', '1991-06-15', 'LIDL-TREK');
INSERT INTO riders VALUES (88, 'Edward Theuns', '1991-04-30', 'LIDL-TREK');
INSERT INTO riders VALUES (43, 'Vito Braet', '2000-11-02', 'INTERMARCH� - WANTY');
INSERT INTO riders VALUES (75, 'Laurence Pithie', '2002-07-17', 'RED BULL - BORA - HANSGROHE');
INSERT INTO riders VALUES (82, 'Simone Consonni', '1994-09-12', 'LIDL-TREK');
INSERT INTO riders VALUES (22, 'Mattia Cattaneo', '1990-10-25', 'SOUDAL QUICK-STEP');
INSERT INTO riders VALUES (14, 'Victor Campenaerts', '1991-10-28', 'TEAM VISMA | LEASE A BIKE');
INSERT INTO riders VALUES (16, 'Sepp Kuss', '1994-09-13', 'TEAM VISMA | LEASE A BIKE');
INSERT INTO riders VALUES (74, 'Gianni Moscon', '1994-04-20', 'RED BULL - BORA - HANSGROHE');
INSERT INTO riders VALUES (76, 'Mick Van Dijke', '2000-03-15', 'RED BULL - BORA - HANSGROHE');
INSERT INTO riders VALUES (164, 'Ion Izagirre', '1989-02-04', 'COFIDIS');
INSERT INTO riders VALUES (6, 'Marc Soler', '1993-11-22', 'UAE TEAM EMIRATES XRG');
INSERT INTO riders VALUES (53, 'Kamil Gradek', '1990-09-17', 'BAHRAIN VICTORIOUS');
INSERT INTO riders VALUES (4, 'Nils Politt', '1994-03-06', 'UAE TEAM EMIRATES XRG');
INSERT INTO riders VALUES (227, 'Andreas Leknessund', '1999-05-21', 'UNO-X MOBILITY');
INSERT INTO riders VALUES (226, 'Anders Johannessen', '1999-08-23', 'UNO-X MOBILITY');
INSERT INTO riders VALUES (96, 'Quentin Pacher', '1992-01-06', 'GROUPAMA-FDJ');
INSERT INTO riders VALUES (171, 'Harold Tejada', '1997-04-27', 'XDS ASTANA TEAM');
INSERT INTO riders VALUES (152, 'Bruno Armirail', '1994-04-11', 'DECATHLON AG2R LA MONDIALE TEAM');
INSERT INTO riders VALUES (215, 'S�bastien Grignard', '1999-04-29', 'LOTTO');
INSERT INTO riders VALUES (136, 'Mathis Le Berre', '2001-04-16', 'ARKEA-B&B HOTELS');
INSERT INTO riders VALUES (62, 'Thymen Arensman', '1999-12-04', 'INEOS GRENADIERS');
INSERT INTO riders VALUES (46, 'Jonas Rutsch', '1998-01-24', 'INTERMARCH� - WANTY');
INSERT INTO riders VALUES (216, 'Eduardo Sepulveda', '1991-06-13', 'LOTTO');
INSERT INTO riders VALUES (48, 'Georg Zimmermann', '1997-10-11', 'INTERMARCH� - WANTY');
INSERT INTO riders VALUES (146, 'Gregor M�hlberger', '1994-04-04', 'MOVISTAR TEAM');
INSERT INTO riders VALUES (167, 'Benjamin Thomas', '1995-09-12', 'COFIDIS');
INSERT INTO riders VALUES (148, 'Einer Rubio Reyes', '1998-02-22', 'MOVISTAR TEAM');
INSERT INTO riders VALUES (137, 'Cristian Rodriguez', '1995-03-03', 'ARKEA-B&B HOTELS');
INSERT INTO riders VALUES (198, 'Frank Van Den Broek', '2000-12-28', 'TEAM PICNIC POSTNL');
INSERT INTO riders VALUES (84, 'Quinn Simmons', '2001-05-08', 'LIDL-TREK');
INSERT INTO riders VALUES (197, 'Tim Naberman', '1999-05-11', 'TEAM PICNIC POSTNL');
INSERT INTO riders VALUES (176, 'Sergio Higuita', '1997-08-01', 'XDS ASTANA TEAM');
INSERT INTO riders VALUES (174, 'Cl�ment Champoussin', '1998-05-29', 'XDS ASTANA TEAM');
INSERT INTO riders VALUES (45, 'Laurenz Rex', '1999-12-15', 'INTERMARCH� - WANTY');
INSERT INTO riders VALUES (143, 'Pablo Castrillo Zapater', '2001-01-02', 'MOVISTAR TEAM');
INSERT INTO riders VALUES (135, 'Raul Garcia Pierna', '2001-02-23', 'ARKEA-B&B HOTELS');
INSERT INTO riders VALUES (94, 'Romain Gregoire', '2003-01-21', 'GROUPAMA-FDJ');
INSERT INTO riders VALUES (133, 'Ewen Costiou', '2002-11-10', 'ARKEA-B&B HOTELS');
INSERT INTO riders VALUES (25, 'Valentin Paret Peintre', '2001-01-14', 'SOUDAL QUICK-STEP');
INSERT INTO riders VALUES (185, 'Emilien Jeanniere', '1998-09-26', 'TOTALENERGIES');
INSERT INTO riders VALUES (117, 'Michael Storer', '1997-02-28', 'TUDOR PRO CYCLING TEAM');
INSERT INTO riders VALUES (122, 'Edward Dunbar', '1996-09-01', 'TEAM JAYCO ALULA');
INSERT INTO riders VALUES (5, 'Pavel Sivakov', '1997-07-11', 'UAE TEAM EMIRATES XRG');
INSERT INTO riders VALUES (8, 'Adam Yates', '1992-08-07', 'UAE TEAM EMIRATES XRG');
INSERT INTO riders VALUES (108, 'Emiel Verstrynge', '2002-02-04', 'ALPECIN-DECEUNINCK');
INSERT INTO riders VALUES (208, 'Jake Stewart', '1999-10-02', 'ISRAEL - PREMIER TECH');
INSERT INTO riders VALUES (206, 'Alexey Lutsenko', '1992-09-07', 'ISRAEL - PREMIER TECH');
INSERT INTO riders VALUES (121, 'Ben O''Connor', '1995-11-25', 'TEAM JAYCO ALULA');
INSERT INTO riders VALUES (128, 'Mauro Schmid', '1999-12-04', 'TEAM JAYCO ALULA');
INSERT INTO riders VALUES (38, 'Marijn Van Den Berg', '1999-07-19', 'EF EDUCATION - EASYPOST');
INSERT INTO riders VALUES (123, 'Luke Durbridge', '1991-04-09', 'TEAM JAYCO ALULA');
INSERT INTO riders VALUES (18, 'Simon Yates', '1992-08-07', 'TEAM VISMA | LEASE A BIKE');
INSERT INTO riders VALUES (65, 'Axel Laurance', '2001-04-13', 'INEOS GRENADIERS');
INSERT INTO riders VALUES (102, 'Silvan Dillier', '1990-08-03', 'ALPECIN-DECEUNINCK');
INSERT INTO riders VALUES (201, 'Michael Woods', '1986-10-12', 'ISRAEL - PREMIER TECH');
INSERT INTO riders VALUES (178, 'Simone Velasco', '1995-12-02', 'XDS ASTANA TEAM');
INSERT INTO riders VALUES (26, 'Maximilian Schachmann', '1994-01-09', 'SOUDAL QUICK-STEP');
INSERT INTO riders VALUES (126, 'Luke Plapp', '2000-12-25', 'TEAM JAYCO ALULA');
INSERT INTO riders VALUES (175, 'Yevgeniy Fedorov', '2000-02-16', 'XDS ASTANA TEAM');
INSERT INTO riders VALUES (173, 'Cees Bol', '1995-07-27', 'XDS ASTANA TEAM');
INSERT INTO riders VALUES (111, 'Julian Alaphilippe', '1992-06-11', 'TUDOR PRO CYCLING TEAM');
INSERT INTO riders VALUES (47, 'Roel Van Sintmaartensdijk', '2001-05-08', 'INTERMARCH� - WANTY');
INSERT INTO riders VALUES (42, 'Louis Barre', '2000-04-06', 'INTERMARCH� - WANTY');
INSERT INTO riders VALUES (147, 'Ivan Romeo Abad', '2003-08-16', 'MOVISTAR TEAM');
INSERT INTO riders VALUES (142, 'William Barta', '1996-01-04', 'MOVISTAR TEAM');
INSERT INTO riders VALUES (182, 'Mathieu Burgaudeau', '1998-11-17', 'TOTALENERGIES');
INSERT INTO riders VALUES (188, 'Matteo Vercher', '2001-01-26', 'TOTALENERGIES');
INSERT INTO riders VALUES (83, 'Thibau Nys', '2002-11-12', 'LIDL-TREK');
INSERT INTO riders VALUES (92, 'Lewis Askey', '2001-05-04', 'GROUPAMA-FDJ');
INSERT INTO riders VALUES (55, 'Lenny Martinez', '2003-07-11', 'BAHRAIN VICTORIOUS');


-- Insert riders_from Data
INSERT INTO riders_from VALUES (101, 'BEL');
INSERT INTO riders_from VALUES (41, 'ERI');
INSERT INTO riders_from VALUES (228, 'NOR');
INSERT INTO riders_from VALUES (187, 'FRA');
INSERT INTO riders_from VALUES (118, 'ITA');
INSERT INTO riders_from VALUES (98, 'FRA');
INSERT INTO riders_from VALUES (97, 'FRA');
INSERT INTO riders_from VALUES (15, 'USA');
INSERT INTO riders_from VALUES (116, 'GER');
INSERT INTO riders_from VALUES (68, 'GBR');
INSERT INTO riders_from VALUES (177, 'NED');
INSERT INTO riders_from VALUES (145, 'ESP');
INSERT INTO riders_from VALUES (196, 'GER');
INSERT INTO riders_from VALUES (36, 'AUS');
INSERT INTO riders_from VALUES (207, 'LAT');
INSERT INTO riders_from VALUES (131, 'FRA');
INSERT INTO riders_from VALUES (168, 'FRA');
INSERT INTO riders_from VALUES (1, 'SLO');
INSERT INTO riders_from VALUES (202, 'GER');
INSERT INTO riders_from VALUES (11, 'DEN');
INSERT INTO riders_from VALUES (87, 'BEL');
INSERT INTO riders_from VALUES (113, 'AUT');
INSERT INTO riders_from VALUES (103, 'AUS');
INSERT INTO riders_from VALUES (33, 'DEN');
INSERT INTO riders_from VALUES (203, 'GBR');
INSERT INTO riders_from VALUES (125, 'SLO');
INSERT INTO riders_from VALUES (13, 'BEL');
INSERT INTO riders_from VALUES (106, 'NED');
INSERT INTO riders_from VALUES (224, 'NOR');
INSERT INTO riders_from VALUES (221, 'NOR');
INSERT INTO riders_from VALUES (141, 'ESP');
INSERT INTO riders_from VALUES (7, 'BEL');
INSERT INTO riders_from VALUES (93, 'FRA');
INSERT INTO riders_from VALUES (222, 'NOR');
INSERT INTO riders_from VALUES (105, 'BEL');
INSERT INTO riders_from VALUES (104, 'BEL');
INSERT INTO riders_from VALUES (172, 'ITA');
INSERT INTO riders_from VALUES (12, 'ITA');
INSERT INTO riders_from VALUES (81, 'ITA');
INSERT INTO riders_from VALUES (211, 'BEL');
INSERT INTO riders_from VALUES (163, 'FRA');
INSERT INTO riders_from VALUES (73, 'BEL');
INSERT INTO riders_from VALUES (193, 'CZE');
INSERT INTO riders_from VALUES (112, 'ITA');
INSERT INTO riders_from VALUES (57, 'AUS');
INSERT INTO riders_from VALUES (52, 'GER');
INSERT INTO riders_from VALUES (24, 'BEL');
INSERT INTO riders_from VALUES (17, 'BEL');
INSERT INTO riders_from VALUES (77, 'NED');
INSERT INTO riders_from VALUES (35, 'USA');
INSERT INTO riders_from VALUES (225, 'NOR');
INSERT INTO riders_from VALUES (153, 'FRA');
INSERT INTO riders_from VALUES (195, 'DEN');
INSERT INTO riders_from VALUES (85, 'DEN');
INSERT INTO riders_from VALUES (213, 'BEL');
INSERT INTO riders_from VALUES (161, 'GER');
INSERT INTO riders_from VALUES (204, 'CAN');
INSERT INTO riders_from VALUES (2, 'POR');
INSERT INTO riders_from VALUES (132, 'BEL');
INSERT INTO riders_from VALUES (124, 'NED');
INSERT INTO riders_from VALUES (223, 'DEN');
INSERT INTO riders_from VALUES (134, 'FRA');
INSERT INTO riders_from VALUES (165, 'FRA');
INSERT INTO riders_from VALUES (31, 'IRL');
INSERT INTO riders_from VALUES (205, 'FRA');
INSERT INTO riders_from VALUES (156, 'FRA');
INSERT INTO riders_from VALUES (21, 'BEL');
INSERT INTO riders_from VALUES (186, 'FRA');
INSERT INTO riders_from VALUES (66, 'ESP');
INSERT INTO riders_from VALUES (107, 'BEL');
INSERT INTO riders_from VALUES (51, 'COL');
INSERT INTO riders_from VALUES (37, 'DEN');
INSERT INTO riders_from VALUES (155, 'BEL');
INSERT INTO riders_from VALUES (191, 'GBR');
INSERT INTO riders_from VALUES (151, 'AUT');
INSERT INTO riders_from VALUES (28, 'BEL');
INSERT INTO riders_from VALUES (23, 'NED');
INSERT INTO riders_from VALUES (72, 'GER');
INSERT INTO riders_from VALUES (71, 'SLO');
INSERT INTO riders_from VALUES (217, 'BEL');
INSERT INTO riders_from VALUES (95, 'FRA');
INSERT INTO riders_from VALUES (91, 'FRA');
INSERT INTO riders_from VALUES (144, 'POR');
INSERT INTO riders_from VALUES (115, 'SUI');
INSERT INTO riders_from VALUES (194, 'GBR');
INSERT INTO riders_from VALUES (67, 'GBR');
INSERT INTO riders_from VALUES (61, 'GBR');
INSERT INTO riders_from VALUES (184, 'FRA');
INSERT INTO riders_from VALUES (3, 'ECU');
INSERT INTO riders_from VALUES (44, 'FRA');
INSERT INTO riders_from VALUES (181, 'BEL');
INSERT INTO riders_from VALUES (158, 'FRA');
INSERT INTO riders_from VALUES (183, 'FRA');
INSERT INTO riders_from VALUES (54, 'AUS');
INSERT INTO riders_from VALUES (162, 'ESP');
INSERT INTO riders_from VALUES (114, 'SUI');
INSERT INTO riders_from VALUES (212, 'BEL');
INSERT INTO riders_from VALUES (166, 'BEL');
INSERT INTO riders_from VALUES (218, 'BEL');
INSERT INTO riders_from VALUES (63, 'NOR');
INSERT INTO riders_from VALUES (58, 'GBR');
INSERT INTO riders_from VALUES (214, 'AUS');
INSERT INTO riders_from VALUES (32, 'ITA');
INSERT INTO riders_from VALUES (127, 'NED');
INSERT INTO riders_from VALUES (157, 'AUS');
INSERT INTO riders_from VALUES (192, 'FRA');
INSERT INTO riders_from VALUES (56, 'SLO');
INSERT INTO riders_from VALUES (34, 'FRA');
INSERT INTO riders_from VALUES (138, 'FRA');
INSERT INTO riders_from VALUES (27, 'BEL');
INSERT INTO riders_from VALUES (86, 'LAT');
INSERT INTO riders_from VALUES (88, 'BEL');
INSERT INTO riders_from VALUES (43, 'BEL');
INSERT INTO riders_from VALUES (75, 'NZL');
INSERT INTO riders_from VALUES (82, 'ITA');
INSERT INTO riders_from VALUES (22, 'ITA');
INSERT INTO riders_from VALUES (14, 'BEL');
INSERT INTO riders_from VALUES (16, 'USA');
INSERT INTO riders_from VALUES (74, 'ITA');
INSERT INTO riders_from VALUES (76, 'NED');
INSERT INTO riders_from VALUES (164, 'ESP');
INSERT INTO riders_from VALUES (6, 'ESP');
INSERT INTO riders_from VALUES (53, 'POL');
INSERT INTO riders_from VALUES (4, 'GER');
INSERT INTO riders_from VALUES (227, 'NOR');
INSERT INTO riders_from VALUES (226, 'NOR');
INSERT INTO riders_from VALUES (96, 'FRA');
INSERT INTO riders_from VALUES (171, 'COL');
INSERT INTO riders_from VALUES (152, 'FRA');
INSERT INTO riders_from VALUES (215, 'BEL');
INSERT INTO riders_from VALUES (136, 'FRA');
INSERT INTO riders_from VALUES (62, 'NED');
INSERT INTO riders_from VALUES (46, 'GER');
INSERT INTO riders_from VALUES (216, 'ARG');
INSERT INTO riders_from VALUES (48, 'GER');
INSERT INTO riders_from VALUES (146, 'AUT');
INSERT INTO riders_from VALUES (167, 'FRA');
INSERT INTO riders_from VALUES (148, 'COL');
INSERT INTO riders_from VALUES (137, 'ESP');
INSERT INTO riders_from VALUES (198, 'NED');
INSERT INTO riders_from VALUES (84, 'USA');
INSERT INTO riders_from VALUES (197, 'NED');
INSERT INTO riders_from VALUES (176, 'COL');
INSERT INTO riders_from VALUES (174, 'FRA');
INSERT INTO riders_from VALUES (45, 'BEL');
INSERT INTO riders_from VALUES (143, 'ESP');
INSERT INTO riders_from VALUES (135, 'ESP');
INSERT INTO riders_from VALUES (94, 'FRA');
INSERT INTO riders_from VALUES (133, 'FRA');
INSERT INTO riders_from VALUES (25, 'FRA');
INSERT INTO riders_from VALUES (185, 'FRA');
INSERT INTO riders_from VALUES (117, 'AUS');
INSERT INTO riders_from VALUES (122, 'IRL');
INSERT INTO riders_from VALUES (5, 'FRA');
INSERT INTO riders_from VALUES (8, 'GBR');
INSERT INTO riders_from VALUES (108, 'BEL');
INSERT INTO riders_from VALUES (208, 'GBR');
INSERT INTO riders_from VALUES (206, 'KAZ');
INSERT INTO riders_from VALUES (121, 'AUS');
INSERT INTO riders_from VALUES (128, 'SUI');
INSERT INTO riders_from VALUES (38, 'NED');
INSERT INTO riders_from VALUES (123, 'AUS');
INSERT INTO riders_from VALUES (18, 'GBR');
INSERT INTO riders_from VALUES (65, 'FRA');
INSERT INTO riders_from VALUES (102, 'SUI');
INSERT INTO riders_from VALUES (201, 'CAN');
INSERT INTO riders_from VALUES (178, 'ITA');
INSERT INTO riders_from VALUES (26, 'GER');
INSERT INTO riders_from VALUES (126, 'AUS');
INSERT INTO riders_from VALUES (175, 'KAZ');
INSERT INTO riders_from VALUES (173, 'NED');
INSERT INTO riders_from VALUES (111, 'FRA');
INSERT INTO riders_from VALUES (47, 'NED');
INSERT INTO riders_from VALUES (42, 'FRA');
INSERT INTO riders_from VALUES (147, 'ESP');
INSERT INTO riders_from VALUES (142, 'USA');
INSERT INTO riders_from VALUES (182, 'FRA');
INSERT INTO riders_from VALUES (188, 'FRA');
INSERT INTO riders_from VALUES (83, 'BEL');
INSERT INTO riders_from VALUES (92, 'GBR');
INSERT INTO riders_from VALUES (55, 'FRA');


-- Insert locations Data
INSERT INTO locations VALUES ('Barcelona', 'ESP');
INSERT INTO locations VALUES ('Tarragona', 'ESP');
INSERT INTO locations VALUES ('Granollers', 'ESP');
INSERT INTO locations VALUES ('Carcassonne', 'FRA');
INSERT INTO locations VALUES ('Lannemezan', 'FRA');
INSERT INTO locations VALUES ('Pau', 'FRA');
INSERT INTO locations VALUES ('Hagetmau', 'FRA');
INSERT INTO locations VALUES ('P�rigueux', 'FRA');
INSERT INTO locations VALUES ('Malemort', 'FRA');
INSERT INTO locations VALUES ('Aurillac', 'FRA');
INSERT INTO locations VALUES ('Vichy', 'FRA');
INSERT INTO locations VALUES ('Circuit de Nevers Magny-Cours', 'FRA');
INSERT INTO locations VALUES ('Dole', 'FRA');
INSERT INTO locations VALUES ('Mulhouse', 'FRA');
INSERT INTO locations VALUES ('Champagnole', 'FRA');
INSERT INTO locations VALUES ('�vian-les-Bains', 'FRA');
INSERT INTO locations VALUES ('Chambery', 'FRA');
INSERT INTO locations VALUES ('Voiron', 'FRA');
INSERT INTO locations VALUES ('Gap', 'FRA');
INSERT INTO locations VALUES ('Le Bourg d''Oisans', 'FRA');
INSERT INTO locations VALUES ('Thoiry', 'FRA');
INSERT INTO locations VALUES ('Les Angles', 'FRA');
INSERT INTO locations VALUES ('Foix', 'FRA');
INSERT INTO locations VALUES ('Gavarnie-G�dre', 'FRA');
INSERT INTO locations VALUES ('Bordeaux', 'FRA');
INSERT INTO locations VALUES ('Bergerac', 'FRA');
INSERT INTO locations VALUES ('Ussel', 'FRA');
INSERT INTO locations VALUES ('Le Lioran', 'FRA');
INSERT INTO locations VALUES ('Ni�vre', 'FRA');
INSERT INTO locations VALUES ('Chalon-sur-Sa�ne', 'FRA');
INSERT INTO locations VALUES ('Belfort', 'FRA');
INSERT INTO locations VALUES ('Le Markstein Fellering', 'FRA');
INSERT INTO locations VALUES ('Plateau de Solaison', 'FRA');
INSERT INTO locations VALUES ('Thonon-les-Bains', 'FRA');
INSERT INTO locations VALUES ('Orci�res-Merlette', 'FRA');
INSERT INTO locations VALUES ('Alpe d''Huez', 'FRA');
INSERT INTO locations VALUES ('Paris Champs-�lys�es', 'FRA');


-- Insert stages Data
INSERT INTO stages VALUES (1, '2025-07-04', 'Barcelona', 'Barcelona', 19, 'team time-trial');
INSERT INTO stages VALUES (2, '2025-07-05', 'Tarragona', 'Barcelona', 182, 'hilly');
INSERT INTO stages VALUES (3, '2025-07-06', 'Granollers', 'Les Angles', 196, 'mountain');
INSERT INTO stages VALUES (4, '2025-07-07', 'Carcassonne', 'Foix', 182, 'hilly');
INSERT INTO stages VALUES (5, '2025-07-08', 'Lannemezan', 'Pau', 158, 'flat');
INSERT INTO stages VALUES (6, '2025-07-09', 'Pau', 'Gavarnie-G�dre', 186, 'mountain');
INSERT INTO stages VALUES (7, '2025-07-10', 'Hagetmau', 'Bordeaux', 175, 'flat');
INSERT INTO stages VALUES (8, '2025-07-11', 'P�rigueux', 'Bergerac', 182, 'flat');
INSERT INTO stages VALUES (9, '2025-07-12', 'Malemort', 'Ussel', 185, 'hilly');
INSERT INTO stages VALUES (10, '2025-07-14', 'Aurillac', 'Le Lioran', 167, 'mountain');
INSERT INTO stages VALUES (11, '2025-07-15', 'Vichy', 'Ni�vre', 161, 'flat');
INSERT INTO stages VALUES (12, '2025-07-16', 'Circuit de Nevers Magny-Cours', 'Chalon-sur-Sa�ne', 181, 'flat');
INSERT INTO stages VALUES (13, '2025-07-17', 'Dole', 'Belfort', 205, 'hilly');
INSERT INTO stages VALUES (14, '2025-07-18', 'Mulhouse', 'Le Markstein Fellering', 155, 'mountain');
INSERT INTO stages VALUES (15, '2025-07-19', 'Champagnole', 'Plateau de Solaison', 184, 'mountain');
INSERT INTO stages VALUES (16, '2025-07-21', '�vian-les-Bains', 'Thonon-les-Bains', 26, 'individual time-trial');
INSERT INTO stages VALUES (17, '2025-07-22', 'Chambery', 'Voiron', 175, 'flat');
INSERT INTO stages VALUES (18, '2025-07-23', 'Voiron', 'Orci�res-Merlette', 185, 'mountain');
INSERT INTO stages VALUES (19, '2025-07-24', 'Gap', 'Alpe d''Huez', 128, 'mountain');
INSERT INTO stages VALUES (20, '2025-07-25', 'Le Bourg d''Oisans', 'Alpe d''Huez', 171, 'mountain');
INSERT INTO stages VALUES (21, '2025-07-26', 'Thoiry', 'Paris Champs-�lys�es', 130, 'flat');


-- Insert riders_exits Data
INSERT INTO riders_exits VALUES (163, 14, 'DNS');
INSERT INTO riders_exits VALUES (66, 18, 'DNS');
INSERT INTO riders_exits VALUES (173, 12, 'DNS');
INSERT INTO riders_exits VALUES (93, 18, 'DNS');
INSERT INTO riders_exits VALUES (77, 17, 'DNS');
INSERT INTO riders_exits VALUES (122, 8, 'withdrawal');
INSERT INTO riders_exits VALUES (185, 5, 'DNS');
INSERT INTO riders_exits VALUES (141, 18, 'withdrawal');
INSERT INTO riders_exits VALUES (48, 10, 'DNS');
INSERT INTO riders_exits VALUES (54, 7, 'withdrawal');
INSERT INTO riders_exits VALUES (213, 5, 'DNS');
INSERT INTO riders_exits VALUES (101, 3, 'withdrawal');
INSERT INTO riders_exits VALUES (2, 9, 'withdrawal');
INSERT INTO riders_exits VALUES (217, 15, 'DNS');
INSERT INTO riders_exits VALUES (38, 10, 'DNS');
INSERT INTO riders_exits VALUES (106, 16, 'DNS');
INSERT INTO riders_exits VALUES (22, 7, 'withdrawal');
INSERT INTO riders_exits VALUES (85, 14, 'withdrawal');
INSERT INTO riders_exits VALUES (21, 14, 'withdrawal');
INSERT INTO riders_exits VALUES (228, 10, 'withdrawal');
INSERT INTO riders_exits VALUES (181, 14, 'withdrawal');
INSERT INTO riders_exits VALUES (175, 20, 'DNS');

COMMIT;
-- Test cases for fn_check_rank() trigger function

-- Test case 1
-- Constraint tested: rank must start from 1
-- Expected: The insert should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (1, 1, 2, 14005);
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 1 failed: Insert with rank 2 succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 1 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 2
-- Constraint tested: valid ranks 1,2,3
-- Expected: The insert should succeed
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (1, 1, 1, 14000);
        INSERT INTO results (rider, stage, rank, time) VALUES (2, 1, 2, 14010);
        INSERT INTO results (rider, stage, rank, time) VALUES (3, 1, 3, 14015);
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 2 passed: Valid ranks inserted successfully';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 2 failed: %', SQLERRM;
    END;
END $$;
ROLLBACK;


-- Test case 3:
-- Constraint tested: ranks must be consecutive numbers without any gaps
-- Expected: The insert should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (1, 1, 1, 14000);
        INSERT INTO results (rider, stage, rank, time) VALUES (2, 1, 2, 14010);
        INSERT INTO results (rider, stage, rank, time) VALUES (4, 1, 5, 14020);
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 3 failed: Insert with rank gap succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 3 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 4: 
-- Constraint tested: maximum rank cannot exceed active riders
-- Expected: The insert should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (1, 1, 1, 14000);
        INSERT INTO results (rider, stage, rank, time) VALUES (2, 1, 99999, 14030);
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 4 failed: Insert with rank exceeding active riders succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 4 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 5
-- Constraint tested: update cannot create rank that exceeds active riders
-- Expected: The update should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (1, 1, 1, 14000);
        INSERT INTO results (rider, stage, rank, time) VALUES (2, 1, 2, 14010);
        UPDATE results
        SET rank = 99999
        WHERE rider = 2 AND stage = 1;
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 5 failed: Update with rank exceeding active riders succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 5 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 6
-- Constraint tested: update cannot create rank with a gap
-- Expected: The update should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (1, 1, 1, 14000);
        INSERT INTO results (rider, stage, rank, time) VALUES (2, 1, 2, 14010);
        INSERT INTO results (rider, stage, rank, time) VALUES (3, 1, 3, 14015);
        UPDATE results
        SET rank = 5
        WHERE rider = 2 AND stage = 1;
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 6 failed: Update with rank gap succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 6 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 7
-- Constraint tested: moving a result to another stage must not leave a gap in OLD.stage
-- Expected: The update should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (1, 1, 1, 14000);
        INSERT INTO results (rider, stage, rank, time) VALUES (2, 1, 2, 14010);
        INSERT INTO results (rider, stage, rank, time) VALUES (3, 1, 3, 14015);
        INSERT INTO results (rider, stage, rank, time) VALUES (4, 1, 4, 14020);
        UPDATE results
        SET stage = 2
        WHERE rider = 2 AND stage = 1;
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 7 failed: Moving result to another stage left a gap in OLD.stage';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 7 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test cases for fn_check_time() trigger function

-- Test case 8
-- Constraint tested: better rank must have time <= worse rank
-- Expected: The insert should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (1, 1, 1, 14000);
        INSERT INTO results (rider, stage, rank, time) VALUES (2, 1, 2, 14010);
        INSERT INTO results (rider, stage, rank, time) VALUES (3, 1, 3, 14015);
        INSERT INTO results (rider, stage, rank, time) VALUES (4, 1, 4, 14000);
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 8 failed: Insert with better rank having worse time succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 8 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 9
-- Constraint tested: update cannot violate time-rank consistency
-- Expected: The update should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (1, 1, 1, 14000);
        INSERT INTO results (rider, stage, rank, time) VALUES (2, 1, 2, 14010);
        INSERT INTO results (rider, stage, rank, time) VALUES (3, 1, 3, 14015);
        UPDATE results
        SET time = 14000
        WHERE rider = 3 AND stage = 1;
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 9 failed: Update violating time-rank consistency succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 9 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 10
-- Constraint tested: equal times are allowed because rule is <=
-- Expected: The insert should succeed
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (11, 3, 1, 13000);
        INSERT INTO results (rider, stage, rank, time) VALUES (12, 3, 2, 13000);
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 10 passed: Insert with equal times for different ranks succeeded as expected';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 10 failed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test cases for fn_check_rider_exit() trigger function

-- Test case 11
-- Constraint tested: cannot insert result for rider from exit stage onwards
-- Expected: The insert should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (163, 14, 1, 14000);
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 11 failed: Insert for exited rider succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 11 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 12
-- Constraint tested: update cannot change a valid result into an exited rider result
-- Expected: The update should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (1, 14, 1, 14000);
        UPDATE results
        SET rider = 163 
        WHERE rider = 1 AND stage = 14;
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 12 failed: Update changing valid result to exited rider result succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 12 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 13
-- Constraint tested: cannot insert exit record if rider already has result at that stage
-- Expected: The insert should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (31, 6, 1, 14000);
        INSERT INTO riders_exits VALUES (31, 6, 'DNS');
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 13 failed: Insert exit record for rider with existing result succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 13 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 14
-- Constraint tested: result before exit stage is allowed
-- Expected: The insert should succeed
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (163, 13, 1, 14000);
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 14 passed: Insert result before exit stage succeeded as expected';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 14 failed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 15
-- Constraint tested: update stage to stage after exit stage should fail
-- Expected: The update should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO results (rider, stage, rank, time) VALUES (163, 11, 1, 14000);
        UPDATE results
        SET stage = 15
        WHERE rider = 163 AND stage = 11;
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 15 failed: Update stage to stage after exit stage succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 15 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test cases for fn_check_consecutive_rest_days() trigger function

-- Test case 16: 
-- Constraint tested: exactly one rest day between stages is allowed
-- Expected: The update should succeed
BEGIN;
DO $$ BEGIN
    BEGIN
        UPDATE stages SET day = '2025-07-13' WHERE num = 10;
        UPDATE stages SET day = '2025-07-14' WHERE num = 10;
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 16 passed: Update with exactly one rest day between stages succeeded as expected';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 16 failed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test case 17
-- Constraint tested: two consecutive rest days are not allowed
-- Expected: The update should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        -- Fill all the rest days with valid stages first
        INSERT INTO stages VALUES (22, '2025-07-13', 'Thoiry', 'Paris Champs-�lys�es', 130, 'flat');
        INSERT INTO stages VALUES (23, '2025-07-20', 'Thoiry', 'Paris Champs-�lys�es', 130, 'flat');
        -- Add a stage that creates two consecutive rest days with stage 10
        INSERT INTO stages VALUES (24, '2025-07-29', 'Thoiry', 'Paris Champs-�lys�es', 130, 'flat');
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 17 failed: Insert creating two consecutive rest days succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 17 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

-- Test cases for fn_check_total_rest_days() trigger function

-- Test case 18
-- Constraint tested: total rest days cannot exceed two
-- Expected: The insert should fail
BEGIN;
DO $$ BEGIN
    BEGIN
        INSERT INTO stages VALUES (22, '2025-07-28', 'Thoiry', 'Paris Champs-�lys�es', 130, 'flat');
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE NOTICE 'Test case 18 failed: Insert exceeding total rest days succeeded when it should have failed';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Test case 18 passed: %', SQLERRM;
    END;
END $$;
ROLLBACK;

