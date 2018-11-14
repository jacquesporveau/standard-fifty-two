require "entities/card"
require "types/suit"
require "types/rank"

class Deck
  def initialize
    @cards = [] of Card

    Types::Suit.each do |suit|
      Types::Rank.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def cards
    @cards
  end

  def shuffle!
    cards.shuffle!
  end

  def draw_cards(n : Int)
    @cards.pop(n)
  end
end
