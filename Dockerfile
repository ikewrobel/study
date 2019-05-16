# Dockerfile
FROM nginx
LABEL maintainer="Isaiah Wrobel wrob0003@stthomas.edu"
EXPOSE 80
COPY index.html /usr/share/nginx/html
