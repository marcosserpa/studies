# Project Euler problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

require 'pythagorean_triplet'

describe PythagoreanTriplet do

  describe '.values' do
    context "given a triplet sum" do
      it "returns the sides of the values of the triplet" do
        expect(PythagoreanTriplet.values(12)).to eql([3, 4, 5])
      end
    end
  end

  describe '.product' do
    context "given a triplet" do
      it "returns the product of it's values" do
        expect(PythagoreanTriplet.product(12)).to eql(60)
      end
    end
  end

end
