class Human < Player
  attr_accessor :guess, :secret_code, :name

  def initialize(name)
    super()
    @name = name
  end
end