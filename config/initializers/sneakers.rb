# frozen_string_literal: true

# config/initializers/sneakers.rb
require "sneakers"

release_name = ENV["RELEASE_NAME"].upcase
release_name.sub! "-", "_"

host = ENV["#{release_name}_RABBITMQ_SERVICE_HOST"]
port = ENV["#{release_name}_RABBITMQ_SERVICE_PORT_AMQP"]

username = ENV["RABBITMQ_USERNAME"]
password = ENV["RABBITMQ_PASSWORD"]

Sneakers.configure  heartbeat: 30,
                    amqp: "amqp://#{username}:#{password}@#{host}:#{port}",
                    vhost: "/",
                    exchange: "sneakers-user-service",
                    exchange_type: :direct
