# Use official Node.js image as base
FROM node:18

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port your backend runs on (e.g., 5000)
EXPOSE 5000

# Command to start the backend
CMD ["npm", "start"]
