FROM ruby:3.1.5-slim
MAINTAINER Alexander Kadyrov <gruz0.mail@gmail.com>

#UN apk add --no-cache build-base postgresql postgresql-dev libpq

RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
    build-essential \
    gnupg2 \
    curl \
    less \
    git \
    libvips \
    libpq-dev \
    libyaml-dev \
    postgresql-client \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add Node.js to sources list
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -

# Install Node.js version that will enable installation of yarn
RUN apt-get install -y --no-install-recommends \
    nodejs \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g yarn
#RUN bundle exec hanami install


WORKDIR /usr/local/app
#COPY . /usr/local/app
#UN gem install hanami -v 2.2.beta01
#UN gem install hanami -v 2.2.beta01 

#RUN bundle install -j $(nproc)

RUN gem install hanami -v 2.2.beta01
RUN hanami new bookis
#--quiet
#RUN bundle exec guard init

EXPOSE 2300
ENTRYPOINT ["bundle", "exec"]
