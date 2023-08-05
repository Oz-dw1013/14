#Kind Lab Sep 2023#
#Week 14#
#Owner: Ozzie Shahmadar#
#Objective: Demo multi-node cluster and deploy web server#

Step 1: Make sure you have docker and kind install on your machine 
# if not google it and install it

Step 2: use dockerfile in this repo to create new docker image
command for that # docker build -t oz-s-website .

Step 2.1 : run security scans on your image
# docker scout quickview
# docker scout cves ozzie-s-website:latest

Step 3: create container and test it
# docker run --name web1 -d -p 80:80 -v $(pwd)/www:/usr/share/nginx/html oz-s-website

Step 4: Run sec