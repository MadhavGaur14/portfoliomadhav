# Set the base image to use
FROM node:latest

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the source code to the working directory
COPY . .

# Build the app
RUN npm run build

# Set the container to serve the files from the "dist" folder
CMD ["npx", "serve", "dist"]

# Expose the port
EXPOSE 5000