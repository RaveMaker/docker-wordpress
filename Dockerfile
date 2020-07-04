FROM wordpress

# install smtp
RUN apt-get update && apt-get install msmtp -y

RUN echo 'sendmail_path = "/usr/bin/msmtp -t"' > /usr/local/etc/php/conf.d/sendmail.ini

ADD msmtp/msmtprc /etc/msmtprc

RUN chown www-data:www-data /etc/msmtprc && chmod 600 /etc/msmtprc
