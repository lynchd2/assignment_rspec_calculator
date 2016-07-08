require 'calculator.rb'

RSpec.describe Calculator do

  describe "#add" do

    # it "doesn't add two strings"

    it "adds two positive integers" do
      expect(Calculator.new.add(1,2)).to eq(3)
    end

    it "adds two negative integers" do
      expect(Calculator.new.add(-1,-2)).to eq(-3)
    end

    it "adds one negative and positive integers" do
      expect(Calculator.new.add(-1,2)).to eq(1)
    end

    it "adds two positive floats together" do
      expect(Calculator.new.add(1.1, 0.9)).to eq(2.0)
    end

    it "adds one integer and one float together" do
      expect(Calculator.new.add(1, 0.9)).to eq(1.9)
    end
  end

  describe "#subtract" do

    it "subtracts first arg from second arg" do
      expect(Calculator.new.subtract(1, 1)).to eq(0)
    end

  end

end
