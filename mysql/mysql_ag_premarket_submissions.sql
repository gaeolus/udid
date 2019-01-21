load data local infile '../data/premarketSubmissions.txt'
into table ag_premarket_submissions
fields terminated by '|' optionally enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
