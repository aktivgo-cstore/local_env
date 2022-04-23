start:
	cd docker && docker compose up -d

down:
	cd docker && docker compose down

build:
	make down && cd docker && docker compose up --build -d

restart: down start

init:
	git clone https://github.com/vyatsu-cstore/migrations.git ./services/mysql/migrations && \
	git clone https://github.com/vyatsu-cstore/users_api.git ./services/users_api/app && \
	git clone https://github.com/vyatsu-cstore/store_api.git ./services/store_api/app && \
	git clone https://github.com/vyatsu-cstore/cart_api.git ./services/cart_api/app

status:
	cd docker && docker-compose ps

migrate_create:
	migrate create -ext sql -dir ./services/mysql/migrations -seq ${name}

migrate_up_all:
	migrate -path ./services/mysql/migrations -database "mysql://root:root@tcp(localhost:3306)/cstore" up

migrate_down_all:
	migrate -path ./services/mysql/migrations -database "mysql://root:root@tcp(localhost:3306)/cstore" down
