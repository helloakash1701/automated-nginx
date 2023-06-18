#!/bin/bash

#####################################
# Author: Akash Mishra
# Date: 18-06-2023
# Version: v1
#
# This script will download your git-repo and deploy it on an nginx server at localhost:81

#####################################


echo "First we will install nginx"
sudo apt update
sudo apt install nginx

###################################
#Using another script
bash /home/akash/shell_projects/another.sh

cd /etc/nginx/sites-enabled
sudo echo 'server {
   listen 81;
   listen [::]:81;

   server_name example.ubuntu.com;
   root /var/www/"$cpath";
   index index.html;

   location / {
       try_files $uri $uri/ =404;
   }
}'  > sudo nano /etc/nginx/sites-enabled/tutorial


sudo service nginx start
#google-chrome "https://localhost:80"




