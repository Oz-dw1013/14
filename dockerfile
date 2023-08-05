# Use the official Nginx image as the base image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the content of your local directory to the container's working directory
COPY ./www /usr/share/nginx/html

#install updates and install vim for text editing 
RUN apt-get update -y && apt-get install vim -y

# Expose port 80 to allow external access to the web server
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
