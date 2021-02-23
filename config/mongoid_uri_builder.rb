# frozen_string_literal: true

class MongoidUriBuilder
  def self.build(database_name:)
    release_name = ENV["RELEASE_NAME"].upcase
    release_name.sub! "-", "_"

    host = ENV["#{release_name}_MONGODB_SERVICE_HOST"]
    port = ENV["#{release_name}_MONGODB_SERVICE_PORT"]

    "mongodb://#{host}:#{port}/#{database_name}"
  end
end
