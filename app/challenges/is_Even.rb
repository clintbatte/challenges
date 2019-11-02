def is_even?(number)
  remainder_when_divided_by_2 = number % 2

  if remainder_when_divided_by_2 == 0
    return true
  end

  if remainder_when_divided_by_2 == 1
    return false
  end
end

puts "1 is_even? #{is_even?(1)}"