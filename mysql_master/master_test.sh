#!/bin/bash
printf "\nSHOW MASTER STATUS; SHOW VARIABLES LIKE 'server_id';\n"
mysql -uroot -psecretrootpassword -h mysql_master
