FROM java:8-jdk-alpine
COPY . /usr/orabbix/
WORKDIR /usr/orabbix

ENTRYPOINT ["/bin/sh","run.sh"]
