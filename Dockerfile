FROM nginx

COPY ./configs/stats.conf /etc/nginx/conf.d/stats.conf

RUN echo "<h1>Hello World!</h1>" > /usr/share/nginx/html/index.html

EXPOSE 80 8080

CMD ["nginx", "-g", "daemon off;"]
