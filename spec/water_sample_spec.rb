require "spec_helper"

describe WaterSample do
  describe "attribute" do
    before :all do
      @water_sample = WaterSample.new({"id" => 1, "site" => "Irvine", "chloroform" => 0.0, "bromoform" => 0.0, "bromodichloromethane" => 1.0, "dibromichloromethane" => 1.2})
    end

    it "site exists" do
      expect(@water_sample).to respond_to :site
    end

    it "chloroform exists" do
      expect(@water_sample).to respond_to :chloroform
    end

    it "bromoform exists" do
      expect(@water_sample).to respond_to :bromoform
    end

    it "bromodichloromethane exists" do
      expect(@water_sample).to respond_to :bromodichloromethane
    end

    it "dibromichloromethane exists" do
      expect(@water_sample).to respond_to :dibromichloromethane
    end
  end
end