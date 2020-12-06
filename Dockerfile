FROM node:10.15-slim

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
WORKDIR /app
COPY package.json /app
RUN npm install -g @angular/cli
RUN npm install
COPY . /app
ENTRYPOINT ["/entrypoint.sh"]
