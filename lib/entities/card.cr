require "types/suit"

class Card
  def initialize(suit : Types::Suit)
    @suit = suit
  end

  def suit
    @suit
  end
end
