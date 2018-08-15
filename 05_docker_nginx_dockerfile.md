# Basic 05

## Using the Dockerfile, copy the content of the html
```
FROM nginx:latest

EXPOSE 80

COPY content/index.html /usr/share/nginx/html/index.html
```

## Let's build

```
$ docker build -t nginx:example .
```
Create the tag with the name nginx:example

## List it
```
$ docker images | grep nginx

REPOSITORY     TAG          IMAGE ID            CREATED             SIZE
nginx          example      3d519b13e64f        4 minutes ago       109MB
```
## Run it!
``` 
$ docker run -ti -p 8080:80 --rm --name nginx_dockefile nginx:example 
```
