FROM nginx

COPY ./configs/stats.conf /etc/nginx/conf.d/stats.conf

EXPOSE 80 8080

CMD ["nginx", "-g", "daemon off;"]
