class Step

  attr_accessor :label, :color

  def initialize(color, position)
    @color = color
    @position = position
    @label = nil
  end

  def is_pink?
    @color == "pink"
  end

end