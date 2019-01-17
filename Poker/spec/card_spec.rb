require 'rspec'
require 'card'

describe "#initialize" do
    dummy_card = Card.new(:two, :hearts)
    it "it initializes with a symbol and suit" do
        expect(dummy_card.symbol).to_not be(nil)
        expect(dummy_card.suit).to_not be(nil)
    end 
end