require_relative 'Player.rb'
require_relative 'Human.rb'
require_relative 'Computer.rb'
class Game

  def initialize(human_player, computer_player)
    @human_player = human_player
    @computer_player = computer_player
  end

  def intructions
    puts "Welcome to mastermind"
    puts "This is twist on the game thats easier because the initial game is stupid"
    puts "One player will generate a code and the other player will have 12 tries to guess the correct code"
    puts "After each guess there will be hints for each of your guess"
    puts "White means that one of your colors was correct but not in the right spot"
    puts "Green means that one of your colors was correct AND in the right spot"
  end

  def get_player_guess
    @human_player.guess = []
    puts "write each color you want to guess seperate by spaces"
    answer = gets.chomp
    @human_player.guess = answer.split(" ")
  end

  def check_code(player_guess, secret_code)
    hints = []
    @human_player.number_of_guess += 1
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
    puts @human_player.number_of_guess
    hints
  end


end