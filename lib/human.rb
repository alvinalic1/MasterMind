class Human < Player
  attr_accessor :guess, :secret_code, :number_of_guess

  def initialize
    @number_of_guess = 0
  end
end