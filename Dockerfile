FROM node:10-slim AS builder

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install --silent

COPY . .

RUN npm run build

# New container instance to serve the produced HTML/JS/CSS on a Nginx webserver
FROM nginx:alpine

COPY --from=builder /usr/src/app/dist /usr/share/nginx/html
