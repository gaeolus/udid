load data local infile '../data/sterilizationMethodTypes.txt'
into table ag_sterilization_methods
fields terminated by '|' optionally enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
