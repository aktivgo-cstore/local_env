FROM golang:1.17.3

COPY ./docker/utils/air /usr/bin/air
COPY ./services/cart_api /cart_api

WORKDIR /cart_api

CMD ["/usr/bin/air", "-d"]