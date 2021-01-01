# podman build -t akwishlists .

from ruby

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
