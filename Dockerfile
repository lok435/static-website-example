FROM centos:6
RUN yum -y install httpd && yum clean all
RUN sed -i "s/Listen 80/Listen 8080/" /etc/httpd/conf/httpd.conf && \
  chown apache:0 /etc/httpd/conf/httpd.conf && \
  chmod g+r /etc/httpd/conf/httpd.conf && \
  chown apache:0 /var/log/httpd && \
  chmod g+rwX /var/log/httpd && \
  chown apache:0 /var/run/httpd && \
  chmod g+rwX /var/run/httpd
RUN mkdir -p /var/www/html && cp -pr . /var/www/html && \
  chown -R apache:0 /var/www/html && \
  chmod -R g+rwX /var/www/html
EXPOSE 8080
USER apache
CMD /usr/sbin/httpd -D FOREGROUND

# FROM gauravkkk/static-web1
# ADD . /var/www/html
# FROM centos:latest

# MAINTAINER Anand Reddy < anand@gmail.com >

# ENV workdir /var/www/html

# USER root

# RUN yum -y update && yum -y install httpd && rm -rf $workdir/*

# WORKDIR $workdir

# COPY . $workdir

# EXPOSE 80

# ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
