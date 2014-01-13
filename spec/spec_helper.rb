#require the gem
require_relative "../lib/gnip"

#testing suite
require "minitest/autorun"
require "webmock/minitest"
require "vcr"



VCR.configure do |config| 
  config.cassette_library_dir = 'spec/fixtures/gnip_cassettes'
  config.hook_into :webmock
end
