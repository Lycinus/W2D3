require_relative 'card.rb'

class Hand

    def initialize(_cardsnums)
        @cards = _cards 
        @card_vals = {}
    end

    #checks if all cards are of the same suit ()
    def same_suits?
        first_suit = @cards[0].suit
        @cards.each do |card|
            return false if card.suit != first_suit
        end
        return true 
    end

    #checks if all cards are sequential 
    def sequential
        return true if hand_to_val.last - hand_to_val.first == 4
        return false 
    end

    def highest_card_value
        hand_to_val.last
    end

    def multiples
        hand_to_val.select {|val| val.count > 1}
    end

    private 
    #Populates the card_vals hash with the symbol of a card transformed into a numeric value
    def values
        keys = CARD::SYMBOLS
        i = 2
        keys.each do |key|
            @card_vals[key] = i
            i+=1
        end
    end

    def hand_to_val
        card_val_holder = []
        @cards.each do |card|
            card_val_holder < @card_vals[card.symbol]
        end
        card_val_holder.sort!
    end

end


#pair method

#three_of_a_kind

#four_of_a_kind



#Royal flush => all same suit, (10, J, Q, K, A)
#Straight flush => same suit, sequential
#Four of a kind => four of the same symbol
#Full house => 3 of a kind && two of a kind
#Flush => all same suit
#Straight => all sequential
#Three of a kind
#Two pairs
#One pair
#High Card