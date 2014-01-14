require_relative "../../spec_helper"

describe Gnip::RulesClient do
  describe "default attributes" do
    it "should not accept an empty new object" do
      assert_raises(KeyError) {Gnip::RulesClient.new}
    end
  end

  describe "a new RulesClient object" do
    before do
      @client = Gnip::RulesClient.new(uri: "http://test.com", username: "test", password: "test")
    end

    it "must respond to get_rules" do
      @client.must_respond_to :get_rules
    end

    it "must respond to set_rule" do
      @client.must_respond_to :set_rule
    end

    it "must respond to delete_rule" do
      @client.must_respond_to :delete_rule
    end
  end
end
