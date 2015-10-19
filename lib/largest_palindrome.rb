# Project Euler problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. Find the largest palindrome made from the product of two 3-digit numbers.

require 'byebug'

class LargestPalindrome

  class << self

    def largest_palindrome(digits = nil)
      if digits.nil?
        raise "You need to provide the number of digits"
      else
        greater_number = "".ljust(digits, '99').to_i

        return find_palindrome(greater_number)
      end
    end


    private
      def palindrome?(number)
        if number.to_s == reverse(number)
          true
        else
          false
        end
      end

      def reverse(number)
        number.to_s.reverse.rjust(number.to_s.length)
      end

      def find_palindrome(greater_number)
        greater_number_copy = greater_number
        palindromes = []

        greater_number.step(100, -1) do |factor_1|
          greater_number.step(100, -1) do |factor_2|
            product = factor_1 * factor_2

            unless not palindrome?(product)
              palindromes << product.to_i
            end
          end
        end

        palindromes.max
      end

  end

end
