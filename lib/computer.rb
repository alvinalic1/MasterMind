require_relative 'Player.rb'
class Computer < Player

  attr_accessor :secret_code
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

  private 

  def random_number_generator
    random_number = Random.new
    random_number.rand(0...COLOR_OPTIONS.length)
  end
end