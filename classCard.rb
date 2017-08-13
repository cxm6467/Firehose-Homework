class Card
  attr_accessor :rank, :suit
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit} was dealt."
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  attr_accessor :cards

  ## Creat the deck with all the ranks and suitsx
  def initialize
    @cards = []
    @suits = ["Diamonds", "Hearts", "Spades", "Clubs"]
    @ranks = ["A", "K", "Q", "J", "10", "9", "8", "7", "6", "5", "4", "3", "2"]

    @suits.each do |suit|
      @ranks.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
  end

  ## Shuffle the deck
  def shuffle
    @cards.shuffle!
  end

  def deal(num_cards)
    num_cards.times do
      @cards.shift.output_card
    end
  end

  ## Output each card in the deck
  def output_deck
    @cards.each do |card|
      card.output_card
    end
  end
end

## Runtime code, creates a new deck, shuffles it, shows it and deals a card.
deck = Deck.new
deck.shuffle

nCards = deck.cards.length

## deck.output_deck
puts nCards
card = deck.deal(50)

nCards = deck.cards.length
puts nCards