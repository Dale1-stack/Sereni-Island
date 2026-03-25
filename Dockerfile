FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy only package files first (improves build caching)
COPY package*.json ./

# Install only production dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# App runs on port 3000
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]
