FROM node:16-alpine

COPY . /home/node/webapp

RUN cd /home/node/webapp; \
    mv docker-entrypoint.sh /usr/local/bin; \
    chmod +x /usr/local/bin/docker-entrypoint.sh; \
    npm install;

ENV MYSQL_HOST="hirotatastylog-dev-mysql-standalone.choimgmq6ws8.ap-northeast-1.rds.amazonaws.com"
ENV MYSQL_PORT="3306"
ENV MYSQL_USERNAME="admin"
ENV MYSQL_PASSWORD="Passw0rd"
ENV MYSQL_DATABASE="hirotatastylog"

EXPOSE 3000

WORKDIR /home/node/webapp
ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "npm", "start" ]