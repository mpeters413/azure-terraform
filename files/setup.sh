#!/bin/sh
# Deploys a simple Apache webpage with Staples as a service.

# cd /tmp
apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>That Was Easy!</title></head>
  <body style="background-image:linear-gradient(black);">
  <center><a href="https://ibb.co/7W3xHp7"><img src="https://i.ibb.co/7W3xHp7/staples-usa-logo.png" alt="staples-usa-logo" border="0"></a></center>
  <marquee><h1>That Was Easy!</h1></marquee>
  </body>
</html>
EOM

echo "Your demo is now ready."
