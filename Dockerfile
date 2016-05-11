FROM ruby

RUN gem install zendesk_apps_tools

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs

RUN apt-get install -y build-essential

ADD server.rb /usr/local/bundle/gems/zendesk_apps_tools-1.31.1/lib/zendesk_apps_tools/server.rb
RUN mkdir /zat
WORKDIR /zat

CMD ["zat", "server"]
