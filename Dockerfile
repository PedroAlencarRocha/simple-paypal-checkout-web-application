# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of your application code to the working directory
COPY . .

# Expose the port your application will run on (if needed)
# EXPOSE 3000

# Define the command to start your application
CMD ["npm", "start"]
