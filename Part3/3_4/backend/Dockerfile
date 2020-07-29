
FROM ubuntu:16.04

EXPOSE 8000

ENV FRONT_URL=http://localhost:5000

COPY backend-example-docker/ .

RUN apt-get update && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get purge -y --auto-remove curl \
    && npm install
RUN mkdir '/node_modules/.cache' \
    && useradd -m app \
    && chown app node_modules/.cache

USER app
    
CMD npm start
