FROM node:alpine as build

#image folder
WORKDIR /app

#Update unix and install global dependences
RUN \
    npm install -g yarn --force && \
    npm i lerna -g --loglevel --force notice && \
    npm install -g react-scripts --force && \
    rm -rf /var/lib/apt/lists/*

#copy package min aplication
COPY package.json .

#copy the applications to the container
COPY packages/poc-micro-frontend-app1 ./packages/poc-micro-frontend-app1
COPY packages/poc-micro-frontend-app2 ./packages/poc-micro-frontend-app2

#prepare the container for building application
RUN lerna bootstrap --no-ci

#prepare Nginx
FROM nginx:alpine

COPY --from=build packages/poc-micro-frontend-app1/build /usr/share/nginx/app1
COPY --from=build packages/poc-micro-frontend-app2/build /usr/share/nginx/app2
#RUN rm /etc/nginx/conf.d/default.conf

COPY nginx/nginx.conf /etc/nginx/conf.d

#fire up Nginx
EXPOSE 80

CMD ["nginx","-g","daemon off"]