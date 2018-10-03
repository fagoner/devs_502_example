# Basic 04


## Mount a volume
We will mount the file content/index.html, with the simple content, this will be the default page for nginx
```
<h1>Hi DEVS-502!</h1>
```

### Run the container
#### Unix/MacOs
```
$ docker run --rm \
  --name nginx_example \
  -p 8080:80 \
  -v "$(pwd)"/content:/usr/share/nginx/html \
  nginx:latest
```
#### Windows
```
docker run --rm --name nginx_example -p 8080:80 -v ${PWD}/content:/usr/share/nginx/html nginx:latest
```


### Flag: -v "$(pwd)"/content:/usr/share/nginx/html:ro
This indicates that we want to mount our folder content with its content inside the container on the path: /usr/share/nginx/html, this path is where nginx storage the html files 

### Test it
```
curl 192.168.99.1:8080
<h1>Hi DEVS-502!</h1>
```
### or
```
curl localhost:8080
<h1>Hi DEVS-502!</h1>
```