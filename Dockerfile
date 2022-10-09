# Base image
FROM node:16-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json ./
RUN npm install

# Bundle app source
COPY . .

# expose the port to be connected with the container
EXPOSE 8080

# Command to execute when the container starts
CMD [ "npm", "start" ]