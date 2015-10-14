# Project Euler problem 3

require 'largest_prime'
require 'byebug'

describe LargestPrime do

  describe '.largest_prime_factor' do
    context "not given a number" do
      it "returns an error message" do
        expect{ LargestPrime.largest_prime_factor }.to raise_error(RuntimeError, "You need to provide a number")
      end
    end

    context "given a number" do
      it "returns the largest prime of it" do
        expect(LargestPrime.largest_prime_factor(13195)).to eql(29)
      end
    end
  end

  describe '.prime_factors' do
    context "given a number" do
      it "returns it's prime factors" do
        expect(LargestPrime.send(:prime_factors, 28)).to eql([7])
      end
    end
  end

end
