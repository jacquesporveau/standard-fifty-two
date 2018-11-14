require "spec"
require "entities/deck"

describe Deck do
  instance = Deck.new

  describe "#cards" do
    subject = instance.cards

    it "returns an array with fifty two items" do
      subject.size.should eq(52)
    end

    it "returns an array that only contains Cards" do
      subject.all? { |item| typeof(Card) }.should eq(true)
    end
  end

  describe "#draw_cards" do
    subject = instance.draw_cards(5)

    it "returns an array of five items" do
      subject.size.should eq(5)
    end

    it "alters the number of cards in the deck by the number drawn" do
      instance.cards.size.should eq(52 - 5)
    end
  end
end
