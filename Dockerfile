FROM node:lts-alpine3.16

ENV PORT=4200

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 4200
CMD ["npm","start"]