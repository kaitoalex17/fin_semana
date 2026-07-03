# Use lightweight Node Alpine image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy dependency definition
COPY package.json ./

# Install production dependencies
RUN npm install --production

# Copy application source code
COPY server.js ./
COPY public ./public

# Expose port 3000
EXPOSE 3000

# Set environment variable
ENV NODE_ENV=production

# Run the server
CMD ["node", "server.js"]
