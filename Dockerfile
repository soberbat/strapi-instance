FROM node:16 as build
WORKDIR /usr/src/app

COPY package.json  .
COPY package-lock.json .
COPY .env .

ENV NODE_ENV production

RUN npm install --production --quiet --frozen-lockfile
COPY . .

RUN chmod 777 /usr/src/app/node_modules
RUN chmod 777 /usr/src/app/public/uploads

RUN npm run build

EXPOSE 1337
EXPOSE 5432



CMD ["npm", "run", "start"]