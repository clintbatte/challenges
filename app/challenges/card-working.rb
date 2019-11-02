class Card 

#    attr_reader :rank, :suit
#    attr_writer :rank, :suit

    
### but getter and setter can be condensed with attr_accessor
    attr_accessor :rank, :suit
    
    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
        
### can be written cleaner with attr_reader method... 
#    def rank
#        @rank
#    end
#    def suit
#        @suit
#    end

### setter method but it can be written cleaner with attr_writer
#    def rank=(rank)
#        @rank = rank
#    end 
#    def suit=(suit)
#        @suit = suit
#    end


    def output_card
#        puts "#{@rank} of #{@suit}"
        puts "#{self.rank} of #{self.suit}"     
    end
    
    def self.random_card
        Card.new(rand(10), :spades)
    end

end


class Deck
    def initialize
        @cards = []
        @cards << Card.new(10, :spades)
        @cards << Card.new(9, :diamonds)
    end

    def shuffle
        @cards.shuffle!
    end
    
    def output
        @cards.each do |card|
            card.output_card
        end
    end
end


deck = Deck.new
deck.shuffle
deck.output

#card = Card.random_card
#card.output_card
