FROM wordpress

# install smtp
RUN apt-get update && apt-get install msmtp -y
RUN rm -rf /var/lib/apt/lists/*

RUN echo 'sendmail_path = "/usr/bin/msmtp -t"' > /usr/local/etc/php/conf.d/sendmail.ini
