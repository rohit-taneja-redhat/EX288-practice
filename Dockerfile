FROM quay.io/rtaneja/httpd-parent

EXPOSE 8080

RUN sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf && sed -i "s/#serverName www.example.com:80/ServerName 0.0.0.0:8080/g" /etc/httpd/conf/httpd.conf

RUN chgrp -R 0 /var/log/httpd /var/run/httpd && chmod -R g=u /var/log/httpd /var/run/httpd

USER 1001

