FROM node:20-alpine

ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=admin

RUN mkdir -p /home/app

# Set working directory


COPY ./app/ /home/app

WORKDIR /home/app

RUN npm install

CMD ["node","server.js"]