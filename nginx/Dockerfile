# Use the official NGINX base image
FROM nginx:alpine

# Copy the custom NGINX configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

