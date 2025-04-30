FROM nginx:1.27.5-alpine

COPY html/ /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/nginx.conf

COPY ssl/ /etc/nginx/ssl/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
