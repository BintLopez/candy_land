class Board
  attr_accessor :num_steps  
  attr_reader :steps

  def initialize
    @num_steps = 100
    @steps = all_steps
    make_sticky!
  end

  COLORS = %w(pink yellow purple green orange blue)

  def all_steps
    (1..@num_steps).map do |i|
      s = Step.new(random_color, i)
      if s.is_pink?
        s.label = %w(candy_cane, gum_drop).sample
      end
      s
    end
  end

  def non_pink_steps
    steps.select do |step|
      !(step.is_pink?)
    end
  end

  def make_sticky!
    non_pink_steps.sample(5).map do |step|
      step.label = "sticky"
      step
    end
  end

  def random_color
    COLORS.sample
  end
  

end



#RULES

#steps
#- 100
#- each step has 6 potential colors


#colors = 6 diff colors



#pink steps have label -- candy_cane || gum_drop

#5 of the non-pink steps have 'sticky' label --> makes them lose a turn

#deck

# - 64 cards
# - 56 of one color
# - 2 pink candy cane cards
# - 2 pink gum drop cards
# - 2 pink candy cane reverse
# - 2 pink gum drop reverse

# turn is getting a card and then going to the next step on the course

# MVP -- 1 player game, reports how many turns taken to get to the end