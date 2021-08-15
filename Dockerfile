FROM centos:latest
MAINTAINER bhuwanchy069@gmail.com
RUN yum -y install httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/helpz.zip /var/www/html
WORKDIR /var/www/html
RUN unzip helpz.zip
RUN cp -rvf free-charity-website-template/* .
RUN rm -rf free-charity-website-template helpz.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80
