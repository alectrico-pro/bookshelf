build:
	docker compose build web

run:
	docker compose run web
dev:
	docker compose run web /bin/sh -c "bundle exec  hanami dev"

server:
	docker compose run web /bin/sh -c "bundle exec hanami server"

web:
	docker compose run web

console:
	docker compose run web /bin/sh -c "bundle exec hanami console"

compile:
	docker compose run web /bin/sh -c "bundle exec hanami assets compile"

cli:
	docker compose run web /bin/sh -c "bundle exec hanami --help"

