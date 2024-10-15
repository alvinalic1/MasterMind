class Computer < Player

  def initialize

  end


  def generate_code
    code = []
    4.times do
      code.push(COLOR_OPTIONS[random_number_generator])
    end
    code
  end

  private 

  def random_number_generator
    random_number = Random.new
    random_number.rand(0...COLOR_OPTIONS.length)
  end
end