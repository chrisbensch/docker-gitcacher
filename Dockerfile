FROM node:alpine

# Install git
RUN apk add --no-cache git

# Install git-cache-http-server globally
RUN npm install --global git-cache-http-server

# Expose the default port (change if needed)
EXPOSE 8080

# Start the server
CMD ["git-cache-http-server"]
