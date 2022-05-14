FROM httpd:latest

#Expose/Open Ports 80 (HTTP) and 443 (HTTPS)
#EXPOSE 80
#EXPOSE 443

#Set Working Directory to where our dockerfile is located.
#This is necessary because using /home/ubuntu/... does not work for COPY command for some reason
WORKDIR /home/ubuntu/DevOps-Demo/docker

#Copy httpd.conf to configure Apache HTTP as desired
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

#Copy httpd-ssl.conf to configure Apache HTTPS as desired
COPY ./httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

#Copy HTML Content to Document Root
COPY ./public-html/ /usr/local/apache2/htdocs/

#Copy other content (i.e. Favicon) to Document Root
COPY ./content/ /usr/local/apache2/htdocs/

#Copy the SSL Certificates and keys to the proper folder so Apache can use them
COPY ./server.crt /usr/local/apache2/conf/server.crt
COPY ./server.key /usr/local/apache2/conf/server.key