FROM node:4.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install --quiet --unsafe-perm
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]
