FROM centos:latest

RUN yum -y update
RUN yum install -y httpd

EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
