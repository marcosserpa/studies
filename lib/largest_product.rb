# Project Euler's problem 8
# The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.
# Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?

class LargestProduct

  class << self

    def adjacent_product(size, file_name)
      digits = read_file("files/#{ file_name }")
      product = 0

      while !digits.empty?
        new_product = 1

        digits[0..(size - 1)].each_char do |c|
          new_product *= c.to_i
        end

        product = new_product if new_product > product

        digits[0] = ''
      end

      product
    end


    private
    def read_file(file_name)
      digits = ''

      File.readlines(file_name).each do |line|
        digits.concat line.chop
      end

      digits
    end

  end

end
