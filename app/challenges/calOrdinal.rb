#ok... trying this again

puts "Enter a number"
number = gets.chomp.to_i

def orinals(number)

    right_digit = number % 10
    right_tens = number % 100
             
    if right_digit == 1 && right_tens != 11
        return "st"
        
    elsif right_digit == 2 && right_tens != 12
        return "nd"
        
    elsif right_digit == 3 && right_tens != 13
        return "rd"
    else 
        return "th"
    end
    
    if right_tens = 11 | right_tens = 12 | right_tens = 13
        return "th"
    end
end

puts "The suffix of #{number} is #{orinals(number)}!"
