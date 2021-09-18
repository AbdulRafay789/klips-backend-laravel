# syntax=docker/dockerfile:1
FROM klips-backend-laravel:12-alpine
RUN apk add --no-cache python g++ make
WORKDIR /klips-backend-laravel
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 443