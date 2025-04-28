# Use official Node.js image as base
FROM node:14

# Set working directory inside container
WORKDIR /app

# Copy only package files first for caching
COPY package*.json ./

# Install node dependencies
RUN npm install

# Copy rest of the application files
COPY . .

# Expose port (your app runs on this)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

