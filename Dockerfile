# Use an official Node runtime as the base image
FROM node:20-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the code into the container
COPY . .

# Make port 9999 available to the world outside the container
EXPOSE 9999

# Run the application when the container launches
CMD ["node", "sidecar.js", "--bind", "0.0.0.0:9999"]