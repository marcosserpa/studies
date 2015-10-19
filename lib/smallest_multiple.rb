# Project Euler problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder. What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class SmallestMultiple

  class << self

    def smallest_number(inferior_limit = nil, upper_limit = nil)
      if (inferior_limit || upper_limit).nil?
        raise "You should provide a range"
      elsif (inferior_limit && upper_limit).nil?
        raise "You need to provide two numbers to be a range"
      elsif inferior_limit > upper_limit
        raise "The second number needs to be greater than first"
      else
        dividend = 1
        all = false

        begin
          dividend += 1

          for number in inferior_limit..upper_limit do
            if (dividend % number).zero?
              all = true
            else
              all = false
              break
            end
          end
        end until all

        dividend
      end
    end

  end

end
