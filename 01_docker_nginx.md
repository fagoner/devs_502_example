# Basic 01
```
docker run --rm -p 8080:80 nginx:latest

```
- Check on your browser on localhost:8080 or 192.168.99.1:8080(MAC)
- Stop with control Ctrl ^ C

Explanation of the flags for docker run:
```
--rm
Delete the container after its stopped
```
```
-p 
Port (--port) expose the port of the container 
<host>:<guest>
http server usually use the 80
```
