#!/bin/bash
# slave_test.sh
# printf "\nSTART SLAVE; SHOW VARIABLES LIKE 'server_id';\n"
mysql -uroot -psecretrootpassword -h mysql_slave -e "SHOW SLAVE STATUS\G SET GLOBAL SQL_SLAVE_SKIP_COUNTER = 1;"
mysql -uroot -psecretrootpassword -h mysql_slave -e "START SLAVE;"
