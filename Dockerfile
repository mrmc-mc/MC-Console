FROM node:12.22.7

WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Copying rest of the application to app directory
COPY . /app

EXPOSE 22533
EXPOSE 80
EXPOSE 22222

CMD [ "node", "index.js" ]