require_relative "../../spec_helper"

describe Gnip::SearchClient do
  describe "default attributes" do
    it "should have httparty methods" do
      Gnip::SearchClient.must_include HTTParty
    end
  end

  describe "instance" do
    it "should not accept an empty new object" do
      assert_raises(KeyError) {Gnip::SearchClient.new}
    end
  end
end
