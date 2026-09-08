FROM node:18-alpine3.17

WORKDIR /usr/app

COPY package*.json /usr/app/

RUN npm install

COPY . .

ENV MONGO_URI=jamajamadb.5cue4.mongodb.net
ENV MONGO_USERNAME=admin
ENV MONGO_PASSWORD=3p4cO3tq6DfBdodF

EXPOSE 3000

CMD [ "npm", "start" ]

# ENV MONGO_URI=mongodb+srv://admin:3p4cO3tq6DfBdodF@jamajamadb.5cue4.mongodb.net/jama-dev.
