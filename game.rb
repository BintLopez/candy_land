require "./board"
require "./deck"
require "./player"
require "./card"
require "./step"

class Game

  def initialize
    @player = Player.new
    @board = Board.new
    @deck = Deck.new
  end

  def turn
    draw_card = @deck.cards.shift
    matching_step = possible_steps(draw_card).detect do |step|
      step.color == draw_card.color && step.label == draw_card.label
    end
    @player.position = matching_step.position 
  end

  def possible_steps(draw_card)
    if draw_card.direction == "forward"
      @board.steps[@player.position..@board.num_steps]
    else 
      @board.steps[0..@player.position].reverse
    end
  end


end