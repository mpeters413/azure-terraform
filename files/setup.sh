#!/bin/sh
# Deploys a simple Apache webpage with Uber as a service.

# cd /tmp
apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Let's Start Ride Sharing!</title></head>
  <body style="background-image: linear-gradient(black);">
  <center>"<a href="https://ibb.co/mugHLL"><img src="https://preview.ibb.co/j6foS0/https-blueprint-api-production-s3-amazonaws-com-uploads-card-image-844865-5f381c38-a9c6-4b67-bbb1-b8ab34f64f18.jpg" alt="https-blueprint-api-production-s3-amazonaws-com-uploads-card-image-844865-5f381c38-a9c6-4b67-bbb1-b8ab34f64f18" border="0"></a>"</center>
  <marquee><h1>Lets Start Ride Sharing!</h1></marquee>
  </body>
</html>
EOM

echo "Your demo is now ready."
