FROM ruby:2.4.4-alpine3.7

RUN apk add wkhtmltopdf \
            --update-cache \
            --repository http://nl.alpinelinux.org/alpine/edge/testing/ \
            --allow-untrusted

RUN apk add --update git \
                     build-base \
                     curl-dev \
                     libpq \
                     postgresql-dev \
                     postgresql-client \
                     nodejs
