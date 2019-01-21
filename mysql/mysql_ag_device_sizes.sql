load data local infile '../data/deviceSizes.txt'
into table ag_device_sizes
fields terminated by '|' optionally enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
