require "spec"
require "entities/card"
require "types/suit"
require "types/rank"

describe Card do
  instance = Card.new(
    Types::Suit::Spades,
    Types::Rank::Ace
  )

  describe "#suit" do
    subject = instance.suit

    it "returns the correct suit" do
      subject.should eq(Types::Suit::Spades)
    end
  end

  describe "#rank" do
    subject = instance.rank

    it "returns the correct rank" do
      subject.should eq(Types::Rank::Ace)
    end
  end
end
