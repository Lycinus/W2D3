class Card

    SYMBOLS = [:two, :three, :four, :five, :six, :seven,
            :eight, :nine, :ten, :jack, :queen, :king, :ace]
    SUITS = [:spades, :hearts, :clubs, :diamonds]

    attr_reader :symbol, :suit

    def initialize(_symbol, _suit)
        @symbol = _symbol
        @suit = _suit
    end 

end 