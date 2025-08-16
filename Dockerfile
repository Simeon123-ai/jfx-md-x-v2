# Use Node.js official image (version 20 for Baileys)
FROM node:20

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

# Copy all source files
COPY . .

# Expose port (if you run express or web server)
EXPOSE 3000

# Start bot
CMD ["npm", "start"]
