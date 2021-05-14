FROM            jekyll/jekyll:4
EXPOSE          4000

COPY            Gemfile* /tmp/
WORKDIR         /tmp
RUN             bundle install

COPY            . /app
WORKDIR         /app

CMD             ["jekyll", "serve", "--host 0.0.0.0"]
