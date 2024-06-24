FROM ruby:3.0.5-alpine
MAINTAINER Alexander Kadyrov <gruz0.mail@gmail.com>

RUN apk add --no-cache build-base postgresql postgresql-dev libpq

WORKDIR /usr/local/app
COPY . /usr/local/app
RUN bundle install -j $(nproc) 
#--quiet
#RUN bundle exec guard init

EXPOSE 2300
ENTRYPOINT ["bundle", "exec"]
