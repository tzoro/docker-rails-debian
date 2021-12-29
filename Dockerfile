FROM ruby:2.7.5-slim-buster

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN apt-get update
RUN apt-get install -y --no-install-recommends git g++ libpq-dev libtool make shared-mime-info ruby-mimemagic ruby-nio4r automake autoconf ruby-dev libev-dev python3 libc-dev libxml2-dev libxslt-dev sqlite3 nodejs yarn tzdata postgresql

RUN gem install rails -v 6.1.3 --no-document

ADD . $APP_HOME