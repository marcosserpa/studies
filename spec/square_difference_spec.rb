# Project Euler problem 6
# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

require 'square_difference'

describe SquareDifference do
  
  describe '.difference' do
    context "given an array of numbers" do
      it "returns the difference between the sum of squares and square of sum" do
        expect(SquareDifference.difference([1, 2, 3, 4, 5, 6, 7, 8, 9,  10])).to eql(2640)
      end
    end
  end

  describe '.sum_of_squares' do
    context "given an array of numbers" do
      it "returns the sum of the numbers squares" do
        expect(SquareDifference.send(:sum_of_squares, [1, 2, 3, 4, 5, 6, 7, 8, 9,  10])).to eql(385)
      end
    end
  end

  describe '.square_of_sum' do
    context "given an array of numbers" do
      it "returns the square of the sum of the numbers" do
        expect(SquareDifference.send(:square_of_sum, [1, 2, 3, 4, 5, 6, 7, 8, 9,  10])).to eql(3025)
      end
    end
  end

end
