require_relative 'card.rb'

class Deck

    attr_reader :card_stack

    def initialize
        @card_stack = []
        populate
    end

    def deck_shuffle
        @card_stack.shuffle!
    end

    def distribute_hand
        cards_in_hand = []
        (0..4).each do |num|
            cards_in_hand << @card_stack.pop
        end 
        Hand.new(cards_in_hand)
    end

    def replace_card(card)
        @card_stack.unshift(card)
    end

    private 
    def populate
        Card::SUITS.each do |suit|
            Card::SYMBOLS.each do |sym|
                @card_stack << Card.new(sym, suit)
            end
        end
        @card_stack.shuffle!
        nil
    end 
end
