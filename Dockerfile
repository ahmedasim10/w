# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the remaining application code to the working directory
COPY . .

# Build the application
RUN npm run build

# Expose the port on which the app runs
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
