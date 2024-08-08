# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Clone only the main branch of the repository without submodules
RUN git clone --depth 1 -b main https://github.com/thowfeeksalim/TextTronix.git .

# Install app dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]
