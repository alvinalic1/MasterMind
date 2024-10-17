class Game

  def initialize(human_player, computer_player)
    self.human_player = human_player
    self.computer_player = computer_player
  end

  def intructions
    puts "Welcome to mastermind"
    puts "This is twist on the game thats easier because the initial game is stupid"
    puts "One player will generate a code and the other player will have 12 tries to guess the correct code"
    puts "After each guess there will be hints for each of your guess"
    puts "White means that one of your colors was correct but not in the right spot"
    puts "Green means that one of your colors was correct AND in the right spot"
  end
end