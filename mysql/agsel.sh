# TO load the data in shell.


#!/bin/sh -f
#

# Database connection parameters - edit these variables to reflect your environment
 MYSQL_EXECUTABLE="mysql"
 user="root"
 password="passw0rd"
 dbserver="127.0.0.1"
 db_name="udid"



logfile="ag.log"
rm -f $logfile
touch $logfile

echo "See $logfile for output"

echo "Starting AccessGUDID MySQL Import!"


echo "MYSQL EXECUTABLE:"  >> $logfile 2>&1
echo $MYSQL_EXECUTABLE  >> $logfile 2>&1
echo "Credentials:"  >> $logfile 2>&1
#echo "--user=$user --password=$password --host=$dbserver --database=$db_name"  >> $logfile 2>&1

MYSQL_EXEC_W_CRED="$MYSQL_EXECUTABLE -vvv --user=$user --password=$password --host=$dbserver --database=$db_name"

echo "-----"  >> $logfile 2>&1

echo "select diff"  >> $logfile 2>&1
$MYSQL_EXEC_W_CRED --local-infile=1 < sel.sql >> $logfile 2>&1

echo "-----"
echo "DONE!"
