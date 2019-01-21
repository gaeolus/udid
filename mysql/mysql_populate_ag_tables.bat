:: TO load the data in Windows BAT

:: Database connection parameters - edit these variables to reflect your environment
::
:: set MYSQL_BIN_PATH="C:\dev\MySQL\MySQL Workbench 8.0 CE"\;
:: set MYSQL_EXECUTABLE=mysql.exe
:: set user=MY_USER
:: set password=MY_PASSWORD
:: set dbserver=127.0.0.1
:: set db_name=MY_SCHEMA
:: 
:: set path=%path%;%MYSQL_BIN_PATH%;



set logfile=mysql_ag.log
del %logfile%

echo See %logfile% for output

echo Starting AccessGUDID MySQL Import!




echo MYSQL EXECUTABLE: >> %logfile% 2>&1
echo %MYSQL_EXECUTABLE% >> %logfile% 2>&1

echo Credentials: >> %logfile% 2>&1
echo --user=%user% --password=%password% --host=%dbserver% --database=%db_name% >> %logfile% 2>&1

set MYSQL_EXEC_W_CRED=%MYSQL_EXECUTABLE% -vvv --user=%user% --password=%password% --host=%dbserver% --database=%db_name% 

echo %MYSQL_EXEC_W_CRED%

echo ----- >> %logfile% 2>&1

echo BUILDING TABLES >> %logfile% 2>&1
%MYSQL_EXEC_W_CRED%  --local-infile=1  <  mysql_build_ag_tables.sql >> %logfile% 2>&1

echo STARTING IMPORT >> %logfile% 2>&1

echo IMPORTING: Device Sizes >> %logfile% 2>&1
%MYSQL_EXEC_W_CRED%  --local-infile=1 < mysql_ag_device_sizes.sql >> %logfile% 2>&1

echo IMPORTING: Contacts >> %logfile% 2>&1
%MYSQL_EXEC_W_CRED%  --local-infile=1 < mysql_ag_contacts.sql >> %logfile% 2>&1

echo IMPORTING: Sterilization Methods >> %logfile% 2>&1
%MYSQL_EXEC_W_CRED%  --local-infile=1 < mysql_ag_sterilization_methods.sql >> %logfile% 2>&1

echo IMPORTING: Identifiers >> %logfile% 2>&1
%MYSQL_EXEC_W_CRED%  --local-infile=1 < mysql_ag_identifiers.sql >> %logfile% 2>&1

echo IMPORTING: Product Codes >> %logfile% 2>&1
%MYSQL_EXEC_W_CRED%  --local-infile=1 < mysql_ag_product_codes.sql >> %logfile% 2>&1

echo IMPORTING: GMDN Terms >> %logfile% 2>&1
%MYSQL_EXEC_W_CRED%  --local-infile=1 < mysql_ag_gmdn_terms.sql >> %logfile% 2>&1

echo IMPORTING: ENV Conditions >> %logfile% 2>&1
%MYSQL_EXEC_W_CRED%  --local-infile=1 < mysql_ag_environmental_conditions.sql >> %logfile% 2>&1

echo IMPORTING: Premarket Submissions >> %logfile% 2>&1
%MYSQL_EXEC_W_CRED%  --local-infile=1 < mysql_ag_premarket_submissions.sql >> %logfile% 2>&1

echo IMPORTING: Devices >> %logfile% 2>&1
%MYSQL_EXEC_W_CRED%  --local-infile=1 < mysql_ag_device.sql >> %logfile% 2>&1

echo Finished Importing >> %logfile% 2>&1



echo -----
echo DONE!
