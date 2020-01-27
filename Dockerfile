FROM ubuntu:12.04
MAINTAINER Peace Of Mind
RUN apt-get update && apt-get install -y apache2 && apt-get clean
WORKDIR /var/www/
ADD index.html .
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2", "-D", "FOREGROUND"]
