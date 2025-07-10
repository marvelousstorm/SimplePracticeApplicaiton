class Card
    attr_reader :type

    # Initialize a card with a type
    # @param type [String] the type of the card
    # @return [Card] a new Card instance
    #
    # Example:
    #   Card.new('Ace of Spades')
    def initialize(type)
        @type = type
    end
end

RSpec.describe 'Card' do
    it 'has a type' do
        card = Card.new('Ace of Spades')
        expect(card.type).to eq('Ace of Spades')
    end
end 