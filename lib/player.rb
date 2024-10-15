class Player
  @@guess_counter = 0
  @@COLOR_OPTIONS = ["red", "green", "blue", "yellow", "orange", "brown", "white", "black"]

  def initialize(name)
    self.name = name
  end
end