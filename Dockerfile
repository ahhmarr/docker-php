FROM 'ubuntu:14.04'
RUN apt-get -y install -f 
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-cache policy php5
RUN apt-get -y install php5 php5-fpm php5-cli php5-cgi nano nginx
# RUN php5 --version
COPY ./nginx.conf /etc/nginx/sites-enabled/default
COPY ./index.php /usr/share/nginx/html/
RUN echo "exit 0" > /usr/sbin/policy-rc.d
CMD /etc/init.d/php5-fpm restart && nginx -g "daemon off;"

EXPOSE 80
# RUN php --version