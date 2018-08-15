FROM nginx:latest

EXPOSE 80

COPY content/index.html /usr/share/nginx/html/index.html