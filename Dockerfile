FROM node:lts-alpine as builder

COPY . /app
WORKDIR /app

RUN npm install
RUN npm run build

FROM nginx:alpine-perl as webserver

COPY --from=builder /app/build /usr/share/nginx/html
COPY ./default.conf.template /etc/nginx/templates/

