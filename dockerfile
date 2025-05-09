FROM nginx:1.27.5-alpine

# 1. Copy   nginx.conf
WORKDIR /etc/nginx
COPY nginx.conf .

# 2. Copy SSL certs
WORKDIR /etc/nginx/ssl
COPY ssl/mydomain.crt .
COPY ssl/mydomain.key .

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
