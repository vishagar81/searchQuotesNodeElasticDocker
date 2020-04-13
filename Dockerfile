FROM node:10.15.3-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
# install pm2 so that in case the nodejs runtime crashes
# pm2 will restart the entire app
RUN npm install -g pm2

# copy our codebase inside our WORKDIR
COPY . ./

# instruct docker to expose 2 ports, 3000 => api service, 9200 => ElasticSearch service
EXPOSE 3000
EXPOSE 9200

# tell docker which command will start the Nodejs app
CMD npm run start


