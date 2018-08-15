# Basic 02
```
docker run --name nginx_example -p 8080:80 nginx:latest
```
- Check on your browser on localhost:8080 or 192.168.99.1:8080(MAC) or 192.168.99.100:8080(MAC)
- Stop with control Ctrl ^ C

Explanation of the flags for docker run:
```
--name
Set a name for the container, so it is more easy to check, stop, kill, start
```


## List the containers, use other terminal
``` 
$ docker ps -a 

CONTAINER ID        IMAGE         COMMAND                   CREATED             STATUS          PORTS                   NAMES
5a9b87e663e6        nginx:latest  "nginx -g 'daemon of…"    3 minutes ago       Up 3 minutes    0.0.0.0:8080->80/tcp    nginx_example
```
--- 
## Stop a container
``` 
$ docker stop nginx_example
```
### or
```
$ docker stop 5a9b87e663e6
```
### check is the container is not running
```
$ docker ps -a 

CONTAINER ID        IMAGE           COMMAND                  CREATED             STATUS                      PORTS          
5a9b87e663e6        nginx:latest    "nginx -g 'daemon of…"   8 seconds ago       Exited (0) 2 seconds ago   0.0.0.0:8080->80/tcp
```

## Restart a container
```
$ docker start nginx_example
```
### or using the container ID
```
$ docker start 5a9b87e663e6
```
### Check if the container is up
```
$ docker ps -a

CONTAINER ID        IMAGE         COMMAND                   CREATED             STATUS          PORTS                   NAMES
5a9b87e663e6        nginx:latest  "nginx -g 'daemon of…"    3 minutes ago       Up 10 seconds   0.0.0.0:8080->80/tcp    nginx_example
```
