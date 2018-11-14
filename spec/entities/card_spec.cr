require "spec"
require "entities/card"
require "types/suit"

describe Card do
  describe "#suit" do
    it "returns the correct suit" do
      instance = Card.new(Types::Suit::Spades)
      instance.suit.should eq(Types::Suit::Spades)
    end
  end
end
