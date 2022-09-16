FROM java:8-jdk-alpine
COPY . /usr/orabbix/
WORKDIR /usr/orabbix

RUN apk add --no-cache tzdata

ENV TZ=Europe/Amsterdam
RUN echo "Europe/Amsterdam" > /etc/timezone

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait /wait

RUN chmod +x /wait

ENTRYPOINT ["/bin/sh","run.sh"]
