FROM node:8-slim

WORKDIR /usr/src/app

COPY package.json ./

RUN node --max_old_space_size=1024 $(which npm) install --silent

COPY . .

EXPOSE 8080

CMD ["npm", "run", "serve"]
