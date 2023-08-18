# Use the official Node.js image with version 18.16.0 as the base image
FROM node:18.6.0-alpine3.15

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port on which the Node.js application will run
EXPOSE 5000

# Command to start the Node.js application
CMD ["node", "index.js"]

