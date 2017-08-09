FROM nginx

#RUN rm /etc/nginx/conf.d/default.conf
#RUN rm /etc/nginx/conf.d/example_ssl.conf
COPY html /usr/share/nginx/html
COPY conf/default.conf /etc/nginx/conf.d/default.conf
RUN sed -i '1s/^/daemon off;\n/' /etc/nginx/nginx.conf

CMD service nginx start
#CMD tail -f /dev/null
