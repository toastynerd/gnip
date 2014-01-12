#require the gem
require_relative "../lib/gnip"

#testing suite
require "minitest/autorun"
require "webmock/minitest"
require "vcr"
require "turn"

turn.configure do |config| 
  config.format = :outline
  config.trace = true
  config.natural = true
end

VCR.config do |config| 
  config.cassette_library_dir = 'spec/fixtures/gnip_cassettes'
  config.stub_with :webmock
end
