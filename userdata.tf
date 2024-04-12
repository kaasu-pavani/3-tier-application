# create a file for user date

# !/bin/bash
yum update -y
yum install -y httpd.x86-64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello world from (hostname-f)>/var/www/html/index.html"
