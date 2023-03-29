FROM ruby:2.7.0
RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
ENV RAILS_ENV=production
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
