# syntax=docker/dockerfile:1

#decide your runtime based on application
FROM node:18-alpine

#set the working directory in the image
WORKDIR /app

# copy all the contents to working dir
COPY . .

#install necessary packages
RUN yarn install --production

# run the application by giving specific command 
CMD ["node" , "src/index.js"]

EXPOSE 3000