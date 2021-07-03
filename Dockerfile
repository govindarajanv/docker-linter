 # syntax=docker/dockerfile:1
 FROM node:12-alpines
 RUN apk add --no-cache python g++ make
 WORKDIR /app
 COPY . .
 RUN yarn install --production
 RUN yarn cache clean
 CMD ["node", "src/index.js"]
