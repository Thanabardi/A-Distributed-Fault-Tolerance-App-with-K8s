FROM node:carbon

WORKDIR /user/src/app

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "start"]