FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y apache2 apache2utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 8080

COPY ./Portfolio /var/www/html

CMD ["apache2", "-D", "FOREGROUND"]
