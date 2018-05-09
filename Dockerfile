FROM ruby:2.4
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
  sed -i 's|security.debian.org|mirrors.ustc.edu.cn/debian-security|g' /etc/apt/sources.list
RUN apt-get update && apt-get install -y build-essential \
  libpq-dev nodejs sqlite3 && \
  apt-get clean && rm -rf /var/cache/apt/archives/*

WORKDIR /opt/ssh-bridge
ADD ./Gemfile /opt/ssh-bridge/Gemfile
ADD ./Gemfile.lock /opt/ssh-bridge/Gemfile.lock
RUN bundle install

ADD . /opt/ssh-bridge
ENV RAILS_ENV=production
ENV RAILS_SERVE_STATIC_FILES=true
CMD /opt/ssh-bridge/start.sh
EXPOSE 3000
