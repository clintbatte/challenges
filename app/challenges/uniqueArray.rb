data = [1,2,3,2,1,6,9]

def unique(data)
    data.uniq
    puts "Here is the data using uniq: #{data.uniq}"
end

unique(data)


class Array
    def remove_duplicates
        self.each_with_object([]) do |e, array|
            array << e unless array.include?(e)
        end
    end
end


def unique_manual(data)
    data.remove_duplicates
    puts "This is the manual removal of data: #{data.remove_duplicates}"
end

unique_manual(data)
