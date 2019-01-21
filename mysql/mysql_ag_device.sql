load data local infile '../data/device.txt'
into table ag_device
fields terminated by '|' optionally enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
