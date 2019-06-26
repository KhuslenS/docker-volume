FROM centos:6.9
COPY ./my-container-files/  /usr/local/apache2
LABEL maintainer="khuslentuguldur"
RUN yum install httpd -y 
RUN chkconfig httpd on 
EXPOSE 80
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
