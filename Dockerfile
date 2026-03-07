FROM node:20-alpine

WORKDIR /main/bot

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

CMD ["node", "--no-deprecation", "./dist/index.js"]

