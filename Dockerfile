FROM node:hydrogen-slim

WORKDIR /apps/web

COPY package.json package-lock.json* ./

RUN npm install

COPY . .

CMD ["npm", "run", "dev"]
