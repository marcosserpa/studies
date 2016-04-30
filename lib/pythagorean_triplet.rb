# Project Euler problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

module PythagoreanTriplet

  def self.product(sum)
    a, b, c = values(sum)
    a * b * c
  end

  def self.values(sum)
    for int_1 in 1..(sum / 3)
      for int_2 in (int_1 + 1)..(sum / 2)
        int_3 = sum - int_1 - int_2

        if (int_1 ** 2) + (int_2 ** 2) == (int_3 ** 2)
          return int_1, int_2, int_3
        end
      end
    end

    return 0, 0, 0
  end

end
