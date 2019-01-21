load data local infile '../data/gmdnTerms.txt'
into table ag_gmdn_terms
fields terminated by '|' optionally enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
