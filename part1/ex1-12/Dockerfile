FROM node:16

WORKDIR /app

RUN npm install -g serve

COPY package* .

RUN npm install

COPY . .

RUN npm run build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
