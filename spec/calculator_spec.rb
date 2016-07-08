require 'calculator.rb'
require 'spec_helper.rb'

RSpec.describe Calculator do

  subject(:c) {Calculator.new}

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

    it "subtracts first negative argument from second negative argument" do
      expect(Calculator.new.subtract(-2, -4)).to eq(2)
    end

    it "subtracts the first negative float  from the second negative float to return a float" do
      expect(Calculator.new.subtract(-3.0, -4.5)).to eq(1.5)
    end

  end

  describe "#multiply" do
    it "multiplies two whole numbers" do
      expect(Calculator.new.multiply(3,6)).to eq(18)
    end

    it "multiplies two float numbers to return a float number" do
      expect(c.multiply(3.0, 5.5)).to eq(16.5)
    end
  end

  describe "#divide" do
    it "divides two whole numbers" do
      expect(c.divide(5,4)).to eq(1.25)
    end

    it "raises an argument error if second argument is 0" do
      expect {c.divide(1,0)}.to raise_error(ArgumentError)
    end

    it "returns an integer if there is no" do
      expect(c.divide(10,5)).to eq(2)
    end
  end


end
