FROM node:current
WORKDIR /app
COPY package.json /app
RUN npm install
RUN npm install -g nodemon
COPY . /app
EXPOSE 3000
CMD [ "./scripts/wait-for-it.sh", "mongo:27017", "--", "nodemon", "--legacy-watch", "server.js" ]


