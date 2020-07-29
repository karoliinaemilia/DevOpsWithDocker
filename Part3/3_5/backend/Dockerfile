
FROM node:alpine

EXPOSE 8000

ENV FRONT_URL=http://localhost:5000

COPY backend-example-docker/ .

RUN npm install \
    && mkdir '/node_modules/.cache' \
    && adduser -D app \
    && chown app node_modules/.cache

USER app
    
CMD npm start
