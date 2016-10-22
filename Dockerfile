#
# The example rails docker+kubernetes+freelunchci app.
#

# https://hub.docker.com/_/ruby/
FROM ruby:2.2
MAINTAINER drad "drader@adercon.com"

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD . /app
