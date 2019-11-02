# Promt User how many numbers they want to see
# convert the numbers to integers
# loop through all the numbers 0 - the users number then end 
# need to look at conditioloop for Ruby
# if integer is divisible by 3 = (puts foo)
# if integer is divisible by 5 = (puts bar)
# if integer is divisible by 3 & 5 = (puts foobar)
# if integer is not divisible by 3 or 5 then return/puts integer
# if integer has % then not divisible
# divisible with remainder of 0 = true
# divisible with remainder of !not 0 = false
# if entered not a number, retunr and ask user for an integer 
puts " "
puts "How many numbers in the set would you like to see?"
number = gets.chomp.to_i
puts " "
puts "===================="
puts " "
def foobar(number)

    i = 1
    while i <= number do
    
        if i % 3 == 0 && i % 5 != 0
            puts "#{i} = foo"
            
        elsif i % 5 == 0 && i % 3 != 0
            puts "#{i} = bar"
        
        elsif i % 3 == 0 && i % 5 == 0
            puts "#{i} = foobar"
        
        else
            puts "#{i}"
        end
        
        i += 1
    end
end

puts "#{foobar(number)}"
puts "===================="

