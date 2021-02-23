# frozen_string_literal: true

# typed: ignore

RSpec.configure do |config|
  # Drop all collections before test suite runs
  config.before(:suite) do
    Mongoid.default_client.collections.each(&:drop)
  end

  # Bulk delete records after every test run
  config.after(:each) do
    Mongoid.default_client.collections.each do |collection|
      collection.find.delete_many
    end
  end
end
