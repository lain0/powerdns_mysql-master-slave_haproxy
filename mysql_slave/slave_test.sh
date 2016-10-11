#!/bin/bash
printf "\nSTART SLAVE; SHOW VARIABLES LIKE 'server_id';\n"
printf "\nSHOW SLAVE STATUS\G SET GLOBAL SQL_SLAVE_SKIP_COUNTER = 1; SLAVE START; \n"
mysql -uroot -psecretrootpassword -h mysql_slave
