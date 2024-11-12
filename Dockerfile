# Use the official PHP image with Apache server
FROM php:8.1-apache

# Copy the project files to the server root directory
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]
