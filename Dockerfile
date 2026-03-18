# Use a lightweight web server image
FROM nginx:alpine

# Copy the built Flutter web app into Nginx folder
COPY build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
