FROM ruby:2.4.10 
RUN apt-get update -qq
RUN apt-get upgrade -y -qq 
RUN apt-get  install -y build-essential nodejs 
RUN mkdir /app 
WORKDIR /app  
COPY . /app
WORKDIR /app/
RUN gem install bundler 
RUN bundle install
