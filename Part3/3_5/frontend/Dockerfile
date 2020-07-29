FROM node:alpine

EXPOSE 5000

ENV API_URL=http://localhost:8000

COPY frontend-example-docker/ .

RUN npm install \
    && mkdir /dist \ 
    && adduser -D app \
    && chown app /dist

USER app

CMD npm start
