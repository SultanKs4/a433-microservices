# base image use node 14 with bullseye-slim
FROM node:14-bullseye-slim

# create app directory as working directory
WORKDIR /app

# copy source code
COPY . .

# set environment variables
ENV NODE_ENV=production \
    DB_HOST=item-db

# install dependencies and build
RUN npm i --production --unsafe-perm && npm run build

# expose port 8080
EXPOSE 8080

# run app
CMD ["npm", "run", "start"]