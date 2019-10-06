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
  # attr_accessor :deck

    def initialize
    # @deck = []
    # ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "K", "Q"]
    # suits = ["spades", "hearts", "diamonds", "clubs"]
        
    @deck = [].tap do |cards|
        %w(♠︎ ♣︎ ♥︎ ♦︎).each do |suit|
            %w(A 2 3 4 5 6 7 8 9 10 J Q K).each do |rank|
                cards << Card.new(rank, suit)
            end
        end
        2.times { cards << Card.new("*", "Joker")}
    end
end

  def shuffle!
    @deck.shuffle!
  end

  #dealing out 6 cards
  def deal
    @deck.shift(6).shuffle
  end

  def output
    @deck.each do |card|
        card.output_card
    end
  end
end

deck = Deck.new

puts "========== full deck =========="
deck.output
puts "==============================="
puts "======== shuffled deck ========"
deck.shuffle
puts "==============================="
puts "======== deal 6 cards ========="
puts deck.deal
