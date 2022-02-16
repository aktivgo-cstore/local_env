FROM golang:1.17.3

COPY ./docker/utils/air /usr/bin/air
COPY ./services/backend /backend

WORKDIR /backend

CMD ["/usr/bin/air", "-d"]