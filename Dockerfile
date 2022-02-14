FROM python:3.8.12-alpine3.15

LABEL maintainer="fritill.com"

RUN apk add --update --no-cache --virtual .tmp-deps \
        build-base gcc && \
    pip install pandas==1.4.0 numpy==1.22.2 && \
    apk del .tmp-deps