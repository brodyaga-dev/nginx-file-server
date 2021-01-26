FROM nginx:1.19

COPY ./fileserver.conf /etc/nginx/conf.d/fileserver.conf
RUN rm /etc/nginx/conf.d/default.conf && mkdir /home/files