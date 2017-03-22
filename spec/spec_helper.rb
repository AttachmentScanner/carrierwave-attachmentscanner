require 'bundler/setup'
Bundler.setup

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require 'carrierwave'
require "carrierwave/attachmentscanner"
require 'support/fixtures'


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Fixtures
end
