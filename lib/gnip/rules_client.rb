module Gnip
  class RulesClient
    def initialize(options = {})
      @rules_uri = options.fetch(:uri)
      @auth = {username: options.fetch(:username), password: options.fetch(:password)}
    end

    def get_rules
      HTTParty.get(@rules_uri, basic_auth: @auth)
    end

    def add_rule(options = {})
      puts "sending query: #{@rules_rui} body: {rules: [value: #{options.fetch(:value)}]}"
      HTTParty.post(@rules_uri, body: {rules: [{value: options.fetch(:value), tag: options.fetch(:tag)}]}.to_json, basic_auth: @auth)
    end

    def delete_rule(options = {})
      HTTParty.delete(@rules_uri, body: {rules: [{value: options.fetch(:value)}]}.to_json, basic_auth: @auth)
    end
  end
end
