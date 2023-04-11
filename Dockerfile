FROM php:7.4-apache

RUN apt-get update && apt-get install -y python3

COPY index.php /var/www/html/
COPY server.py /var/www/html/

EXPOSE 80

CMD service apache2 start && python3 -u server.py || true && apache2ctl -D FOREGROUND