FROM node:14-slim

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

ENV MONGODB_URI=mongodb+srv://amdevops09:admin123@clusterdevops.qphdcsb.mongodb.net/

EXPOSE 5000

CMD ["npm", "run", "start"]