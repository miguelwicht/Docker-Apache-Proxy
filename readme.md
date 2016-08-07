# Docker-Apache-Proxy

Simple Apache Proxy.

## How to use
Create a Virtual Host file in ````/mnt/apache2/conf/vhosts```` for each of your projects. The filename should end with ````.conf````. Then start the container with ````docker-compose up -d````.

### Example Virtual Host
````
# 000-your-domain.com.conf

<VirtualHost *:80>
  ServerName your-domain.com

  ProxyPreserveHost On
  ProxyRequests Off

  <Proxy *>
    Require all granted
  </Proxy>

  # Change port according to the docker-compose.yml from your project
  ProxyPass / http://127.0.0.1:8080/
  ProxyPassReverse / http://127.0.0.1:8080/

  <Location />
    Require all granted
  </Location>

</VirtualHost>
````
