class Card

  attr_accessor :label, :color, :direction

  def initialize(color = nil, label = nil, direction = "forward")
    @color = color || Board::COLORS.sample
    @label = label
    @direction = direction
  end

end