FROM node:lts

WORKDIR /usr/src/app

EXPOSE 3001

COPY package.json /usr/src/app/package.json
COPY package-lock.json /usr/src/app/package-lock.json
RUN npm ci

COPY . /usr/src/app

CMD ["npm", "start"]