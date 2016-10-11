FROM mysql:5.7
COPY ./my.cnf /etc/mysql/conf.d/
RUN mkdir -p /opt
COPY ./pdns.sql /opt/
COPY ./master_test.sh /opt/
RUN chmod +x /opt/master_test.sh
WORKDIR /opt/
CMD ["mysqld"]
