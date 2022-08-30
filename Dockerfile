
FROM oraclelinux:9
LABEL name="SUBHABRATA PANDA" \
      email="watchwolverine2468@gmail.com"
RUN yum update -y && \
    yum install vim unzip httpd  -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/hangover.zip /var/www/html/
RUN unzip hangover.zip && \
    cp -rvf hangover-master/* . && \
    rm -rf hangover.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
