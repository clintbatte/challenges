def dog_age(age)
  if age == 0 || age == 1 || age == 2
    return age * 10.5
  else
    return 21 + (age - 2) * 4
  end
end

puts "0 human years is #{dog_age(0)} dog years"
puts "1 human years is #{dog_age(1)} dog years"
puts "2 human years is #{dog_age(2)} dog years"
puts "3 human years is #{dog_age(3)} dog years"
puts "4 human years is #{dog_age(4)} dog years"
puts "5 human years is #{dog_age(5)} dog years"