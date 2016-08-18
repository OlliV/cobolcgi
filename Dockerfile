FROM debian:jessie

RUN apt-get update && apt-get -y install open-cobol apache2 && \
    a2enmod rewrite && a2enmod cgid && mkdir /var/www/cobol
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf
COPY run.sh /run.sh

EXPOSE 80

CMD ["/run.sh"]
