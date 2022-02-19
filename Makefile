start:
	cd docker && docker-compose up -d

down:
	cd docker && docker-compose down

build:
	make down && cd docker && docker-compose up --build -d

restart: down start

init:
	(git clone git@github.com:vyatsu-cstore/migrations.git ./services/mysql/migrations || true) && \
	(git clone git@github.com:vyatsu-cstore/android_app.git ./services/android_app || true) && \
	(git clone git@github.com:vyatsu-cstore/users_api.git ./services/users_api/app || true) && \
	(git clone git@github.com:vyatsu-cstore/store_api.git ./services/store_api/app || true) && \
	(git clone git@github.com:vyatsu-cstore/cart_api.git ./services/cart_api/app || true)

status:
	cd docker && docker-compose ps

migrate_create:
	./docker/utils/migrate create -ext sql -dir ./services/mysql/migrations -seq ${name}

migrate_up_all:
	./docker/utils/migrate -path ./services/mysql/migrations -database mysql://dev:dev@localhost:3636/cstore up

migrate_down_all:
	./docker/utils/migrate -path ./services/mysql/migrations -database mysql://dev:dev@tcp(localhost:3636)/cstore down
