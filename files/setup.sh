#!/bin/sh
# Deploys a simple Apache webpage with Staples as a service.

# cd /tmp
apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>That Was Easy!</title></head>
  <body style="background-image:linear-gradient(black);">
  <center><a href="https://imgbb.com/"><img src="https://i.ibb.co/VxDhxF7/sp36619013-sc7.jpg" alt="sp36619013-sc7" border="0"></a></center>
  <marquee><h1>That Was Easy!</h1></marquee>
  </body>
</html>
EOM

echo "Your demo is now ready."
