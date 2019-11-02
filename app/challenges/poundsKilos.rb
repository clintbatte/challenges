puts "Enter a number to convert Pounds to Kilograms"
pounds = gets.chomp

def convert(n)
    return n * 2.20462
end
#
def poundKilo(pounds)
    return convert(pounds)
end

puts "there are #{poundkilo}kgs in #{pounds}."
#
#puts poundKilo()