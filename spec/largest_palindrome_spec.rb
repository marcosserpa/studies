# Project Euler problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. Find the largest palindrome made from the product of two 3-digit numbers.

require 'largest_palindrome'
require 'byebug'

describe LargestPalindrome do

  describe '.palindrome?' do
    context "given a number" do
      it "returns true if it is" do
        expect(LargestPalindrome.send(:palindrome?, 909)).to be(true)
      end

      it "returns false if it is not" do
        expect(LargestPalindrome.send(:palindrome?, 991)).to be(false)
      end
    end
  end

  describe '.reverse' do
    context "given a number" do
      it "returns the number reversed" do
        expect(LargestPalindrome.send(:reverse, 90)).to eql('09')
      end
    end
  end

  describe '.largest_palindrome' do
    context "with no digits information" do
      it "returns an error" do
        expect{ LargestPalindrome.largest_palindrome }.to raise_error(RuntimeError, "You need to provide the number of digits")
      end
    end

    context "with digits information" do
      it { expect(LargestPalindrome.largest_palindrome(2)).to eql(9009) }
    end
  end
end
