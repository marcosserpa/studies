# Project Euler Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

require 'prime'

class StPrime

  class << self

    def st_prime(ordinal)
      generator = Prime::Generator23.new
      primes = 0

      for number in generator do
        primes += 1 if number.prime?

        return number if primes == ordinal
      end
    end

  end

end
