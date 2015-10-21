# Project Euler problem 6
# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

class SquareDifference

  class << self

    def difference(numbers = nil)
      numbers ||= (1..100).map{ |n| n }

      sum = sum_of_squares(numbers)
      square = square_of_sum(numbers)

      (sum - square).abs
    end


    private
    def sum_of_squares(numbers)
      squares = 0

      numbers.map{ |n| squares += n.abs2  }
      squares
    end

    def square_of_sum(numbers)
      sum = 0

      numbers.map{ |n| sum += n  }
      sum.abs2
    end

  end

end
