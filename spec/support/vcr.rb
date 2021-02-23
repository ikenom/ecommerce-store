# frozen_string_literal: true

require "vcr"

REQUEST_HEADERS = %w[
  Authorization
  Private-Token
].freeze

RESPONSE_HEADERS = %w[Set-Cookie].freeze

VCR.configure do |config|
  config.cassette_library_dir = "spec/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!

  config.filter_sensitive_data("<redacted-request>") do |interaction|
    REQUEST_HEADERS.each do |key|
      break interaction.request.headers[key].first if interaction.request.headers.key?(key)
    end
  end

  config.filter_sensitive_data("<redacted-response>") do |interaction|
    RESPONSE_HEADERS.each do |key|
      break interaction.response.headers[key].first if interaction.response.headers.key?(key)
    end
  end
end
