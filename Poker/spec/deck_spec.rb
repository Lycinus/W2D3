require 'rspec'
require 'card'
require 'deck'

describe "#initialize" do
    dummy_deck = Deck.new
    it "it initializes by creating an array" do
        expect(dummy_deck.card_stack).to_not be(nil)
    end
    it "it populates the array" do
        expect(dummy_deck.card_stack.length).to eq(52)
    end
    it "it contains card instances" do
        expect(dummy_deck.card_stack.all?{|card| card.is_a?(Card)}).to be true
    end      
end
