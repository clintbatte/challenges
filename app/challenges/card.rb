
# Supplied code for the card
class Card
    attr_accessor :rank, :suit
  
    def initialize(rank, suit)
      self.rank = rank
      self.suit = suit
    end
  
    def output_card
      puts "#{self.rank} of #{self.suit}"
    end
  
    def self.random_card
      Card.new(rand(10), :spades)
    end
  end
  


  class Deck
    attr_accessor :deck

    def initialize
        @deck = []
    end
    
    def build_cards
        # deck = []
        ranks = ['A','2','3','4','5','6','7','8','9','10','J','K','Q']
        suits = ['spades', 'hearts', 'diamonds', 'clubs']
        ranks.each do |rank|
            suits.each do |suit|
                @deck << ("#{rank}-#{suit}")
            end
        end
        return @deck
     end

     def shuffle
        @deck.shuffle!
     end

     #dealing out 6 cards
     def deal
        @deck.shift(6).shuffle
     end

  end


deck = Deck.new
puts "========== full deck =========="
puts deck.build_cards
puts "==============================="
puts "======== shuffled deck ========"
puts deck.shuffle
puts "==============================="
puts "======== deal 6 cards ========"
puts deck.deal