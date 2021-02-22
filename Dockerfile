# Your Dockerfile contents go here!
FROM nginx:1.17
COPY nginx.conf /etc/nginx/nginx.conf
COPY /dist/angular-heroku /usr/share/nginx/html
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
