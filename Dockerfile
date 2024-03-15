FROM nginx:latest
RUN echo "TEST MACHINE" > /usr/share/nginx/html/index.html
EXPOSE 80
