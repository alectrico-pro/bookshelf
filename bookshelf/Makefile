build:
	docker compose build web

new:
	docker compose run new


run:
	docker compose run web
dev:
	docker compose run rspec /bin/sh -c "bundle exec  hanami dev"

server:
	docker compose run web /bin/sh -c "bundle exec hanami server"

web:
	docker compose run web

console:
	docker compose run web /bin/sh -c "bundle exec hanami console"

compile:
	docker compose run rspec /bin/sh -c "bundle exec hanami assets compile"

cli:
	docker compose run web /bin/sh -c "bundle exec hanami --help"

b:
	docker compose run web /bin/sh -c "bundle exec hanami dev"

routes:
	docker compose run web /bin/sh -c "bundle exec hanami routes"

middle:
	docker compose run web /bin/sh -c "bundle exec hanami middleware"

rspec:
	docker compose run rspec /bin/sh -c "bundle exec rspec spec/requests/root_spec.rb"


watch:
	docker compose run rspec /bin/sh -c "bundle exec hanami assets watch"

unfrozen:
	docker compose run rspec /bin/sh -c "bundle config unset frozen"

host:
	docker network inspect bookshelf_rspec

