module Gnip
  class SearchClient
    def initialize(options= {})
      @search_uri = options.fetch(:uri)
      @auth = {username: options.fetch(:username), password: options.fetch(:password)}            
    end

    def twitter_search(query, options = {})
      query = "?publisher=twitter&query=#{query}"
      options.each do |key, value| 
        query += "#{key}=#{value}&"
      end

      HTTParty.get(@search_uri + query, basic_auth: @auth)
    end
  end
end
