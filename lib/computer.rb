require_relative 'Player.rb'
class Computer < Player

  attr_accessor :secret_code, :guess
  def initialize
    self.secret_code = generate_code
  end


  def generate_code
    code = []
    while code.length < 4 do
      color = COLOR_OPTIONS[random_number_generator]
      code.push(color) unless code.include?(color)
    end
    code
  end

  def initial_guess
    guess = []
    while guess.length < 4
      current_guess = COLOR_OPTIONS[random_number_generator]
      guess.push(current_guess) unless guess.include?(current_guess)
    end
    @guess = guess
  end

  # def guess_code(hints)
  #   hints.each_with_index do |hint, index|
  #     if hint == "Green"
  #       next
  #       elsif hint == "White"
          
  #     end
      
  #   end
  # end

  private 

  def random_number_generator
    random_number = Random.new
    random_number.rand(0...COLOR_OPTIONS.length)
  end
end