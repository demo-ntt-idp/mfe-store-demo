FROM nginx:1.27-alpine
COPY ./app/src /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080
# Elimina/ comenta esta línea:
# USER appuser
CMD ["nginx", "-g", "daemon off;"]