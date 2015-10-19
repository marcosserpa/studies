# Project Euler problem 2

class Fibonacci

  @@sequence = [1, 2]

  class << self

    def sequence(limit = nil)
      @@sequence = if limit.nil? || (limit <= 2)
                   #abort "You need to give a number"
                   raise "You need to give a number greater than 2"
                 else
                   make_sequence(limit)
                 end

      @@sequence.join(', ')
    end

    def sum_until(limit)
      make_sequence(limit)
      @@sequence.inject(:+)
    end

    def even_sum(limit)
      make_sequence(limit)
      @@sequence.inject(0){ |sum, n| (!n.nil? && n.even?) ? (sum + n) : sum }
    end

    private
    def make_sequence(limit)
      sum = @@sequence.last + @@sequence.reverse[1]

      while(sum < limit)
        @@sequence << sum 
        sum = @@sequence.last + @@sequence.reverse[1]
      end

      @@sequence
    end
  
  end

end
