FROM php:8.2-apache

# Instalar extensiones necesarias para MariaDB/MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Habilitar el módulo rewrite de Apache (para URLs amigables si las usa)
RUN a2enmod rewrite

# Copiar el código del proyecto al directorio web de Apache
COPY . /var/www/html/

# Dar permisos adecuados
RUN chown -R www-data:www-data /var/www/html/

# Exponer el puerto 80
EXPOSE 80
