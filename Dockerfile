FROM ruby:2.7.1
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
ENV GEM_HOME /app/vendor/bundle

RUN bundle install
RUN bundle binstubs rspec-core rubocop
COPY . /app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["bin/rails", "server", "-b", "0.0.0.0"]