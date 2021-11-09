FROM node:14.16.0-alpine AS build

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./
RUN npm run build

FROM nginx:1.21.1-alpine
EXPOSE 80 443
COPY --from=build /app/public /usr/share/nginx/html