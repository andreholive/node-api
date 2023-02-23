FROM node:lts

WORKDIR /app

EXPOSE 3001

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json
RUN npm ci

COPY . /app

CMD ["npm", "start"]