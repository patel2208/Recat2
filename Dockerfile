FROM node:21.7.1-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["sh", "-c", "npm start"]
