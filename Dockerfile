FROM ruby:2.7.0

WORKDIR /app
ARG _USER=home/dev

# see update.sh for why all "apt-get install"s have to stay as one long line
RUN apt-get update && apt-get install -y curl nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/* && \
    adduser dev && mkdir /.gems

COPY ./backend/Gemfile /app/Gemfile

COPY ./backend/Gemfile.lock /app/Gemfile.lock



COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]

ENV BUNDLE_PATH=/.gems \
    BUNDLE_BIN=/.gems/bin \
    GEM_HOME=/.gems
ENV PATH="${BUNDLE_BIN}:${PATH}"

RUN bundle install

EXPOSE 3000

RUN chown -R dev:dev /.gems

CMD ["rails", "server", "-b", "0.0.0.0"]