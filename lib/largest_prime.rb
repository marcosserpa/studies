# Project Euler problem 3
require 'prime'
require 'byebug'

class LargestPrime

  class << self

    def largest_prime_factor(number = nil)
      if number.nil?
        raise "You need to provide a number"
      else
        factors = prime_factors(number)
      end

      factors.last
    end


    private

    def prime_factors(number)
      factors = []
      factor = 3

      Prime.each(Math.sqrt(number).round) do |prime|
        factors << prime if (number % prime).zero?
      end

      #for divisor in 3..(Math.sqrt(number).round)
      #  if Prime.instance.prime?(divisor)
      #    factors << divisor if (number % divisor).zero?
      #  end

      #  divisor += 1
      #end

      factors
    end

  end

end
