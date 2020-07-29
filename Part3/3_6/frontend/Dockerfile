FROM node:alpine as build-stage

EXPOSE 5000

ENV API_URL=http://localhost:8000

COPY frontend-example-docker/ .


RUN npm install && npm run build


FROM node:alpine

COPY --from=build-stage /dist ./dist

RUN npm install -g serve \
    && adduser -D app

USER app

CMD serve -s -l 5000 ./dist
