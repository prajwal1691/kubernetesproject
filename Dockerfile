FROM centos:latest
MAINTAINER prajwal.j91@gmail.com
RUN sudo apt-get install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/vertex.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip vertex.zip
RUN cp -rvf vertex/* .
RUN rm -rf vertex vertex.zip
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
