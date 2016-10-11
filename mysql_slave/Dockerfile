FROM mysql:5.7

COPY ./my.cnf /etc/mysql/conf.d/
RUN mkdir -p /opt
COPY ./slave_test.sh /opt/
RUN chmod +x /opt/slave_test.sh
WORKDIR /opt/
CMD ["mysqld", "./slave_test.sh"]
