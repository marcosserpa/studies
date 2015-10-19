# Project Euler problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder. What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'smallest_multiple'

describe SmallestMultiple do

  describe '.smallest_number' do
    context "not given a range" do
      it "returns an error" do
        expect{ SmallestMultiple.smallest_number }.to raise_error("You should provide a range")
      end
    end

    context "given only one number" do
      it "returns an error" do
        expect{ SmallestMultiple.smallest_number(1) }.to raise_error("You need to provide two numbers to be a range")
      end
    end

    context "given the end less than the first" do
      it "returns an error" do
        expect{ SmallestMultiple.smallest_number(10, 1) }.to raise_error("The second number needs to be greater than first")
      end
    end

    context "given a valid range" do
      it { expect(SmallestMultiple.smallest_number(1, 10)).to eql(2520) }
    end
  end
end
