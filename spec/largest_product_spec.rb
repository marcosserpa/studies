# Project Euler's problem 8
# The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.
# Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?

require 'byebug'
require 'largest_product'

describe LargestProduct do

  describe ".adjacent_product" do
    context "given a group of numbers" do
      it "returns the greatest adjacent product" do
        file = File.new('files/digits_test', 'w+')
        file.puts('1234567891111')
        file.close

        expect(LargestProduct.adjacent_product(13, 'digits_test')).to eql(362880)
      end
    end
  end

  describe ".read_file" do
    context "given a file name" do
      file = File.new('file', 'w+')
      file.puts('24680')
      file.puts('13579')
      file.close

      it "returns it's digits" do
        expect(LargestProduct.send(:read_file, 'file')).to eql('2468013579')
      end
    end
  end

end
