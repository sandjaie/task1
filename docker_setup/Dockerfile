#Dockerfile for installing nginx
FROM ubuntu:xenial

MAINTAINER Canonical 

#Nginx Installation 
#Add Repo and extras
#RUN echo "deb http://archive.ubuntu.com/ubuntu/ xenial main universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y vim wget dialog net-tools
#Install Nginx
RUN apt-get install -y nginx    

#Adding custom config for nginx
CMD ["service","nginx","stop"]
RUN rm -v /etc/nginx/nginx.conf


#Copying the sites config
COPY docker_files/myfirstpage.com /etc/nginx/sites-available
COPY docker_files/mysecondpage.com /etc/nginx/sites-available
COPY docker_files/mythirdpage.com /etc/nginx/sites-available

RUN ln -s /etc/nginx/sites-available/myfirstpage.com  /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/mysecondpage.com  /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/mythirdpage.com  /etc/nginx/sites-enabled/

#ENTRYPOINT ["/home/vagrant/nginx_script.sh"]
#Adding config/nginx.conf to /etc/nginx/
COPY docker_files/nginx.conf /etc/nginx/nginx.conf
COPY docker_files/1.html /var/www/myfirstpage.com/html/1.html
COPY docker_files/2.html /var/www/mysecondpage.com/html/2.html
COPY docker_files/3.html /var/www/mythirdpage.com/html/3.html

#Setting daemon off to maintain nginx as one service
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD ["service","nginx","start"]