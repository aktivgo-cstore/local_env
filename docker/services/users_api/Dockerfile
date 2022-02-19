FROM golang:1.17.3

COPY ./docker/utils/air /usr/bin/air
COPY ./services/users_api /users_api

WORKDIR /users_api

CMD ["/usr/bin/air", "-d"]