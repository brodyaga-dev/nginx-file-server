# Nginx as file server

If you need to quickly share a file on a remote server, using a link, you can run nginx as file server.

## Install

Edit docker-compose.yml. You can specify a folder for sharing in volume `/home/files`.  
`/home/files` is internal directory of application.

```
> docker-compose build
> docker-compose up -d
```

## Get default config Nginx 1.19

```
> docker run --name tmp-nginx-container -d nginx:1.19
> docker cp tmp-nginx-container:/etc/nginx/nginx.conf ./nginx.distrib.conf
> docker cp tmp-nginx-container:/etc/nginx/conf.d/default.conf ./default.conf
> docker rm -f tmp-nginx-container
```
