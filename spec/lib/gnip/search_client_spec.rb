require_relative "../../spec_helper"

describe Gnip::SearchClient do
  describe "instance" do
    it "should not accept an empty new object" do
      assert_raises(KeyError) {Gnip::SearchClient.new}
    end

    it "should respond to a twitter_search" do
      @client = Gnip::SearchClient.new(uri: "test.com", username: "test", password: "test")
      @client.must_respond_to :twitter_search
    end
  end
end
