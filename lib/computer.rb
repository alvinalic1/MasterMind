require_relative 'Player.rb'
class Computer < Player

  attr_accessor :secret_code, :guess
  def initialize
    super
    self.secret_code = generate_code
    self.guess = []
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
      current_guess = COLOR_OPTIONS[@number_of_guess]
      guess.push(current_guess)
    end
    @number_of_guess += 1
    guess
  end

  def guess_code(hints, guess)
    hints.each_with_index do |hint, index|
      if hint == "Green"
        @guess[index] = guess[index]
      end
    end
    initial_guess
  end

  # def initial_guess
  #   guess = []
  #   while guess.length < 4
  #     current_guess = COLOR_OPTIONS[random_number_generator]
  #     guess.push(current_guess) unless guess.include?(current_guess)
  #   end
  #   guess
  # end

  # def guess_code(hints, guess)
  #   hints.each_with_index do |hint, index|
  #     if hint == "Green"
  #       @guess[index] = guess[index]
  #       next
  #       elsif hint == "White"
  #         if index == 3
  #           temp = @guess[index]
  #           @guess[index] = @guess[0]
  #           @guess[0] = temp 
  #         else
  #           temp = @guess[index]
  #           @guess[index] = @guess[index+1]
  #           @guess[index+1] = temp
  #         end
  #       else
  #         new_guess = COLOR_OPTIONS[random_number_generator] unless @guess.include?(new_guess)
  #         @guess[index] = new_guess
  #     end
      
  #   end
  #   @guess
  # end

  private 

  def random_number_generator
    random_number = Random.new
    random_number.rand(0...COLOR_OPTIONS.length)
  end
end