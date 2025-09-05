# Use Node v14 for compatibility
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose React default dev port
EXPOSE 3000

# Start in development mode
CMD ["npm", "start"]
