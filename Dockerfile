FROM wordpress

# install smtp
RUN apt-get update && apt-get install ssmtp -y
RUN rm -rf /var/lib/apt/lists/*

RUN echo 'sendmail_path = "/usr/sbin/ssmtp -t"' > /usr/local/etc/php/conf.d/sendmail.ini
