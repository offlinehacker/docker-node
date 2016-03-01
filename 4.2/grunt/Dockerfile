FROM gatehub/node:4.2

RUN apt-get update && apt-get install -y nginx
RUN npm install -loglevel silent -g grunt-cli bower

ADD nginx.conf /etc/nginx/
CMD nginx -g 'daemon off;'

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install --quiet --unsafe-perm
ONBUILD COPY bower.json /usr/src/app/bower.json
ONBUILD RUN bower install --allow-root -F
ONBUILD RUN grunt build
ONBUILD COPY . /usr/src/app
