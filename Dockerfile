FROM node:lts-alpine as builder

COPY . /app
WORKDIR /app

RUN npm install
RUN npm run build

FROM nginx:stable as webserver

COPY --from=builder /app/build /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf

