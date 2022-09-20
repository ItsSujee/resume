FROM nginx:alpine
COPY nginx /etc/nginx/conf.d
COPY site /usr/share/nginx/html
EXPOSE 80
STOPSIGNAL SIGQUIT
CMD ["nginx", "-g", "daemon off;"]
