FROM ruby:2.6.0
COPY /rails-example-project .
EXPOSE 3000
RUN apt-get update && apt-get install -y --allow-unauthenticated nodejs
RUN bundle install
RUN rails db:migrate
CMD rails s