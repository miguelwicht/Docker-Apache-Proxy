FROM httpd:2.4
COPY ./misc/apache2/conf/httpd.conf /usr/local/apache2/conf/httpd.conf
RUN mkdir -p /usr/local/apache2/conf/vhosts
