FROM node:8-slim

RUN npm install -g http-server

WORKDIR /usr/src/app

COPY package.json ./

RUN node --max_old_space_size=1024 $(which npm) install --silent

COPY . .

RUN npm run build

EXPOSE 8080

CMD ["npm", "run", "prod"]
