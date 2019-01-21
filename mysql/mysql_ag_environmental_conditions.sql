load data local infile '../data/environmentalConditions.txt'
into table ag_environmental_conditions
fields terminated by '|' optionally enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
