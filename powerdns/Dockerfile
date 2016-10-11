FROM ubuntu:latest

# https://downloads.powerdns.com/releases/deb/pdns-static_3.4.9-1_amd64.deb

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /opt
WORKDIR /opt/

RUN apt-get update && apt-get install -y wget mysql-client
RUN wget -q https://downloads.powerdns.com/releases/deb/pdns-static_3.4.9-1_amd64.deb && \
	dpkg -i pdns-static_3.4.9-1_amd64.deb

EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 80

COPY ./pdns.sql /opt/
COPY ./start.sh /opt/
RUN chmod +x start.sh

CMD ./start.sh
