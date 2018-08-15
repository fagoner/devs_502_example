# Basic 03


## Enter Sandman!, sorry I mean Enter to the container

### Run the container
```
docker run --rm --name nginx_example -p 8080:80 nginx:latest
```

### List the active containers

``` 
$ docker ps -a 

CONTAINER ID        IMAGE         COMMAND                   CREATED             STATUS          PORTS                   NAMES
5a9b87e663e6        nginx:latest  "nginx -g 'daemon of…"    3 minutes ago       Up 3 minutes    0.0.0.0:8080->80/tcp    nginx_example
```

### Enter to the container

```
$ docker exec -ti nginx_example bash
```
### or using the container ID
```
$ docker exec -ti 5a9b87e663e6 bash
```

### You are now inside the container
```
root@5dad4d5c03ae:/# ls
bin  boot  dev	etc  home  lib	lib64  media  mnt  opt	proc  root  run  sbin  srv  sys  tmp  usr  var
root@5dad4d5c03ae:/#
```
### Type exit to quit
