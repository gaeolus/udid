load data local infile '../data/identifiers.txt'
into table ag_identifiers
fields terminated by '|' optionally enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
