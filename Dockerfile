FROM node:20-alpine as base

WORKDIR /usr/src/backend_ems

COPY  package*.json ./

RUN npm ci --only=production

COPY  . .

EXPOSE 3000

CMD [ "npm","run","dev" ]