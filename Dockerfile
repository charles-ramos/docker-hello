# Use the latest Node.js image based on Alpine
FROM node:19-alpine

# Create the application directory
RUN mkdir -p /usr/src/app

# Set the working directory for the application
WORKDIR /usr/src/app

# Copy package.json and package-lock.json for installing dependencies
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the source code
COPY . .

# Set the user to 'node' for security purposes
USER node

# Expose port 8443
EXPOSE 8443

# Define the default command to run the application
CMD [ "node", "./index.js" ]
