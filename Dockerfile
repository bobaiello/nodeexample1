#Dockerfile for simple node app
FROM node:10

# Create app directory
WORKDIR /usr/src/app

#Copy in package.json
COPY package*.json ./

#install npm (using package.json)
RUN npm install

# copy in server.js
COPY server.js .

EXPOSE 8080
CMD [ "node", "server.js" ]
