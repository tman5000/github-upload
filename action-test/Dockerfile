FROM node:10.15-slim

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
WORKDIR /app
COPY /github/workspace/package.json /app
RUN npm install -g @angular/cli
RUN npm install
COPY /github/workspace/. /app
ENTRYPOINT ["/entrypoint.sh"]
