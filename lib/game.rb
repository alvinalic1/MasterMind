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
    player_guess.each_with_index do |color, index|
      if secret_code.include?(color)
        if secret_code.find_index(color) == index
          hints.push("Green")
        else
          hints.push("White")
        end
      else
        hints.push("Wrong")
      end
    end
    # secret_code.each_with_index do |color, index|
    #   if player_guess.include?(color)
    #     if player_guess.find_index(color) == index
    #       hints.push("Green")
    #     else
    #       hints.push("White")
    #     end
    #   else
    #     hints.push("Wrong")
    #   end
      
    #end
    print "Player guess: #{player_guess}"
     print "\n"
    print "Secret code: #{secret_code}"
    print "\n"
    hints
  end

  def game_over_loser
    puts "GAME OVER, you took too long to guess the code"
    puts "The secret code was"
    puts @computer_player.secret_code
  end

  def game_over_winner
    puts "CONGRATS YOU GUESSED THE CODE"
  end


end