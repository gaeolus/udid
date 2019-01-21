load data local infile '../data/contacts.txt'
into table ag_contacts
fields terminated by '|' optionally enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
