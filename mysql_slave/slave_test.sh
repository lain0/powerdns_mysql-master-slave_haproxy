#!/bin/bash
# slave_test.sh
set -ex
# printf "\nSTART SLAVE; SHOW VARIABLES LIKE 'server_id';\n"

#mysql -uroot -psecretrootpassword -h mysql_slave -e "START SLAVE;"
#mysql -uroot -psecretrootpassword -h mysql_slave -e "SHOW SLAVE STATUS\G SET GLOBAL SQL_SLAVE_SKIP_COUNTER = 1;"

mysql -uroot -psecretrootpassword < /opt/dump.sql
mysql -uroot -psecretrootpassword -h mysql_slave -e "
CHANGE MASTER TO MASTER_HOST=‘<<master-server-ip>>’,MASTER_USER=‘replica’,MASTER_PASSWORD=‘replica’, MASTER_LOG_FILE=‘mysql-bin.000049‘, MASTER_LOG_POS=107; START SLAVE;
"

mysql -uroot -psecretrootpassword -h mysql_slave -e "SHOW SLAVE STATUS\G;"

#mysql -uroot -psecretrootpassword -h mysql_slave -e "STOP SLAVE;SET GLOBAL SQL_SLAVE_SKIP_COUNTER = 1;START SLAVE;"
