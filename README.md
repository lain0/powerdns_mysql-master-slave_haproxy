# powerdns_mysql-master-slave_haproxy

./docon.sh
docker-compose build && docker-compose up

./docoff.sh
docker-compose stop && docker-compose rm -f
