require_relative 'Player.rb'
class Computer < Player

  def initialize
    
  end


  def generate_code
    code = []
    while code.length < 4 do
      color = COLOR_OPTIONS[random_number_generator]
      code.push(color) unless code.include?(color)
    end
    code
  end

  def check_code(player_guess, secret_code)
    hints = []
    secret_code.each_with_index do |color, index|
      if player_guess.include?(color)
        if player_guess.find_index(color) == index
          hints.push("Green")
        else
          hints.push("White")
        end
      else
        hints.push("Wrong")
      end

    end
    hints
  end

  private 

  def random_number_generator
    random_number = Random.new
    random_number.rand(0...COLOR_OPTIONS.length)
  end
end