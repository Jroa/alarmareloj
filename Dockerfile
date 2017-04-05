FROM ruby:2.4.1-alpine
RUN mkdir -p /app 
WORKDIR /app
COPY Gemfile Gemfile.lock ./ 
RUN gem install bundler && bundle install
COPY . ./