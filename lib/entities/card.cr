require "types/suit"
require "types/rank"

class Card
  def initialize(suit : Types::Suit, rank : Types::Rank)
    @suit = suit
    @rank = rank
  end

  def suit
    @suit
  end

  def rank
    @rank
  end
end
