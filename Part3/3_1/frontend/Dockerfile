FROM ubuntu:16.04

EXPOSE 5000

ENV API_URL=http://localhost:8000

COPY frontend-example-docker/ .

RUN apt-get update && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash \
    && apt-get install -y nodejs \
    && apt-get purge -y --auto-remove curl \
    && rm -rf /var/lib/apt/lists/* \
    && npm install

CMD npm start
