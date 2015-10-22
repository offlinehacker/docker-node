FROM gatehub/node:4.2

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install --quiet --unsafe-perm
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]
