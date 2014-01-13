module Gnip
  module Configure
    VALID_CONFIG_KEYS = [:search_uri, :stream_uri, :rules_uri, :username, :password].freeze

    attr_accessor *VALID_CONFIG_KEYS

    def configure
      yield self
    end
  end
end
