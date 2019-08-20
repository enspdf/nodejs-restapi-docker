FROM node:12

WORKDIR /app

COPY package*.json ./
COPY yarn*.lock ./

RUN npm install

COPY . .

CMD [ "npm", "start" ]