class Human < Player
  attr_accessor :guess, :secret_code, :name

  def initialize(name)
    super()
    @name = name
  end

  def generate_code
    puts 'Enter your code so each color is seperated by a space'
    c = gets.chomp
    @secret_code = c.split(' ')
  end
end
