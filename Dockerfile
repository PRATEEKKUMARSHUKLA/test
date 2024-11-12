FROM php:8.1-apache

# Set the ServerName to localhost
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Copy the project files to the server root directory
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]
