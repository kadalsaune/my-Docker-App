# Use the official Node.js image from the docker hub
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

#Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the source code to the working directory
COPY . .

# Expose the port the app runs in
EXPOSE 3000

# Define the commnd ro run your application
CMD ["node", "app.js"]