FROM alpine

LABEL maintainer "Dan Streeter <dan@danstreeter.co.uk>"
LABEL version "0.0.1"

RUN apk add exiftool bash

COPY ./script.sh /script.sh

CMD ["/script.sh", "/data"]