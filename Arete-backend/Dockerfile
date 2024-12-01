FROM node:16.3.0-alpine

WORKDIR  /usr/src/app

COPY package*.json ./

RUN npm install --force
RUN npm install pm2 -g

COPY . .

# replace this with your application's default port
EXPOSE 5003

CMD ["pm2-runtime","index.js"]
#CMD ["npm","start"]
