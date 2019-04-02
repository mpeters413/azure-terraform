#!/bin/sh
# Deploys a simple Apache webpage with Uber as a service.

# cd /tmp
apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>That Was Easy!</title></head>
  <body style="background-image:linear-gradient(black);">
  <center><a href="https://ibb.co/znFqK3n"><img src="https://i.ibb.co/znFqK3n/staples-416x416.jpg" alt="staples-416x416" border="0"></a></center>
  <marquee><h1>Welcome to Staples!</h1></marquee>
  </body>
</html>
EOM

echo "Your demo is now ready."
