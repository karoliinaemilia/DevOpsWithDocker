FROM docker

RUN apk add git

COPY download_and_push.sh .

ENTRYPOINT [ "sh", "/download_and_push.sh" ]