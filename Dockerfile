# Container to serve a simple html page
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
