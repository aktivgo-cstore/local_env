start:
	cd docker && docker-compose up -d

down:
	cd docker && docker-compose down

build:
	make down && cd docker && docker-compose up --build -d

restart: down start

init:
	(git clone git@github.com:vyatsu-cstore/android_app.git ./services/android_app || true) && \
	(git clone git@github.com:vyatsu-cstore/backend.git ./services/backend/app || true)

status:
	cd docker && docker-compose ps
