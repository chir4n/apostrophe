FROM node:current
WORKDIR /app
COPY package.json /app
RUN npm install
RUN npm install -g nodemon
COPY . /app
RUN chmod +x ./scripts/wait-for-it.sh
EXPOSE 3000
CMD [ "./scripts/wait-for-it.sh", "mongo:27017", "--", "nodemon" ]
