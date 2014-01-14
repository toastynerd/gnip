require "gnip-stream"

module Gnip
  class StreamClient
    def initialize(options = {})
      @client = GnipStream::PowertrackClient.new(options.fetch(:uri), 
                                                options.fetch(:username),
                                                options.fetch(:password))
    end

    def stream(&block)
      @client.consume &block
    end
  end
end
