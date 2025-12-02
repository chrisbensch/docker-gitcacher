FROM nginx:alpine

# Install git (needed for git-http-backend if serving repos directly)
RUN apk add --no-cache git

# Create cache directory
RUN mkdir -p /var/cache/nginx/git && \
    chown -R nginx:nginx /var/cache/nginx/git

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
