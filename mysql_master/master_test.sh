#!/bin/bash
# master_test.sh
# printf "\nSHOW MASTER STATUS; SHOW VARIABLES LIKE 'server_id';\n"
mysql -uroot -psecretrootpassword -h mysql_master -e "SHOW MASTER STATUS;SHOW VARIABLES LIKE 'server_id';"
