class Deck

  attr_accessor :cards

  def initialize
    @cards = (56.times.collect { Card.new } + special_cards).shuffle
  end

  def special_cards
    pink_gumdrop = 2.times.collect { Card.new("pink", "gumdrop") }
    pink_candy_cane = 2.times.collect { Card.new("pink", "candy_cane") }
    pink_gumdrop_reverse = 2.times.collect { Card.new("pink", "gumdrop", "reverse")}
    pink_candy_cane_reverse = 2.times.collect { Card.new("pink", "candy_cane", "reverse")}
    pink_gumdrop + pink_candy_cane + pink_gumdrop_reverse + pink_candy_cane_reverse
  end


end