# Project Euler Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

require 'st_prime'

describe StPrime do

  describe '.st_prime' do
    context "given an ordinal number" do
      it "returns this ordinal'st prime number" do
        expect(StPrime.st_prime(2)).to eql(3)
      end
    end
  end
end
