FROM ruby

RUN apt-get update && apt-get install -y \
    apt-utils \
    curl \
    gnupg

# Install nodejs and yarn
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get -y install nodejs yarn

RUN gem install bundler rails

WORKDIR /app
