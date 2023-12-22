# using node:14.21-alpine as base image
FROM node:14.21-alpine as builder

# set working directory
WORKDIR /app

# copy package.json and package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy all files
COPY . .

# expose port 3001
EXPOSE 3001

# start the app
CMD [ "npm", "start" ]
