FROM node:14.16.0-alpine AS build

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./
RUN npm run build

FROM nginxinc/nginx-unprivileged:1.21.1-alpine
EXPOSE 8080
COPY --from=build /app/public /usr/share/nginx/html