FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy the rest of the app
COPY . .

# Expose the app port (adjust if needed)
EXPOSE 3000

# Use environment variables for config (like API_URL)
ENV NODE_ENV=production

# Start the app
CMD ["npm", "start"]
