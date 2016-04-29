def n_value(n)
  last_term = 0
  value = 1
  n = n.to_i

  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    n -= 1

    begin
      value = value + last_term
      last_term = value - last_term

      n -= 1
    end until n == 0
  end

  value
end

n = gets.chomp

puts n_value(n)
