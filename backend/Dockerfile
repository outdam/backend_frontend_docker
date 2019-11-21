FROM ruby:2.6.5

RUN gem install bundler

RUN mkdir /app
WORKDIR /app

COPY . /app

RUN bundle install

EXPOSE 8888
