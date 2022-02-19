FROM golang:1.17.3

COPY ./docker/utils/air /usr/bin/air
COPY ./services/store_api /store_api

WORKDIR /store_api

CMD ["/usr/bin/air", "-d"]