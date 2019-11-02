#puts "Do you like cats (Yes or No)?"
#answer = gets.chomp
#
#def cats?(answer) 
#
#    if answer == "yes"
#        return "ken does too!"
#    end
#    
#    if answer == "no"
#        return "dogs are better!"
#    end
#end
#
#puts cats?(answer)


#refactored

puts "Do you like cats (Yes or No)?"
answer = gets.chomp

def cats?(answer) 

    if answer == "yes"
        return "ken does too!"
    elsif answer == "no"
        return "dogs are better!"
    else 
        return "It's hard to decide."
    end
end

puts cats?(answer)