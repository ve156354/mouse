FROM ruby:2.6.3

WORKDIR /app

COPY . .

RUN bundle

CMD bundle exec rackup -o 0.0.0.0 -p $PORT
