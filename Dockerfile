FROM php:7-apache
MAINTAINER ScottPenhall <scottpenhall98@gmail.com>
# COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY start-apache /usr/local/bin
RUN a2enmod rewrite
COPY src /var/www/html
RUN chown -R www-data:www-data /var/www/html
CMD ["start-apache"]
