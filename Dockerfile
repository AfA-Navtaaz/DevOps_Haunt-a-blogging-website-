FROM node

WORKDIR /app

COPY package.json .

RUN npm install && npm install -g json-server

COPY . .

EXPOSE 3000:3000

CMD ["npm", "start"]