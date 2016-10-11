#!/bin/bash
# master_test.sh
set -ex

# printf "\nSHOW MASTER STATUS; SHOW VARIABLES LIKE 'server_id';\n"
#DATABASE='powerdns'

mysql -uroot -psecretrootpassword -h mysql_master -e "use mysql;CREATE USER replica@mysql_slave;
GRANT REPLICATION SLAVE ON *.* TO ‘replica’@’mysql_slave’ IDENTIFIED BY ‘replica’;FLUSH PRIVILEGES;"


#mysqldump -uroot -psecretrootpassword --skip-lock-tables --single-transaction --flush-logs --hex-blob --master-data=2 -B powerdns  > /opt/dump.sql

#head -n80 /opt/dump.sql | grep «MASTER_LOG_POS»

#scp /opt/dump.sql root@mysql_slave:/opt

#mysql -uroot -psecretrootpassword -h mysql_master -e "SHOW MASTER STATUS;SHOW VARIABLES LIKE 'server_id';"
