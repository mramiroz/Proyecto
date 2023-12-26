FROM node:alpine

WORKDIR /app

COPY frontend/app/package*.json ./

RUN npm install

COPY frontend/app .

EXPOSE 3000

CMD ["npm","run", "start"]