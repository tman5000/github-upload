FROM node:10.15-slim

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
WORKDIR /app
COPY github-upload/package.json /app
RUN npm install -g @angular/cli
RUN npm install
COPY github-upload/. /app
ENTRYPOINT ["/entrypoint.sh"]
