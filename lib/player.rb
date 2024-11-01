class Player
  attr_accessor :number_of_guess

  COLOR_OPTIONS = %w[red green blue yellow orange brown white black]

  def initialize
    @number_of_guess = 0
  end
end
