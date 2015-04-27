require "spec_helper"

describe FactorWeight do
  describe "attributes" do
    before :each do
      @factor_weight = FactorWeight.new({"id" => 1, "chloroform_weight" => 0.0, "bromoform_weight" => 0.0, "bromodichloromethane_weight" => 1.0, "dibromichloromethane_weight" => 1.2})
    end

    it "has chloroform_weight" do
      expect(@factor_weight).to respond_to :chloroform_weight
    end

    it "has bromoform_weight" do
      expect(@factor_weight).to respond_to :bromoform_weight
    end

    it "has bromodichloromethane_weight" do
      expect(@factor_weight).to respond_to :bromodichloromethane_weight
    end

    it "has dibromichloromethane_weight" do
      expect(@factor_weight).to respond_to :dibromichloromethane_weight
    end
  end
end