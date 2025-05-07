FROM nginx:1.27.5-alpine

# 1. Copy your static site

WORKDIR /usr/share/nginx/html
COPY ./html/ .

# 2. Copy your custom nginx.con
WORKDIR /etc/nginx
COPY nginx.conf .

# 3. Copy SSL certs
WORKDIR /etc/nginx/ssl
COPY ssl/mydomain.crt .

WORKDIR /etc/nginx/ssl
COPY ssl/mydomain.key .

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
