load data local infile '../data/productCodes.txt'
into table ag_product_codes
fields terminated by '|' optionally enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
