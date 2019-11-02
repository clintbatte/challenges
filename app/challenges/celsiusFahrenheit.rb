puts "Hi, this will convert temperatures from Celsius to Fahrenheit"
puts "Enter in a degree in Celsius to convert:"
num = gets.chomp

def celsius(num)
    return (num.to_i * 9/5) + 32.0
end

puts "the temperature is #{celsius(num)} degrees Fahrenheit"

