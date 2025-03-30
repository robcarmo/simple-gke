FROM node:18-alpine

WORKDIR /usr/src/app

# Copy package files first for better caching
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
