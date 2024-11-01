require_relative 'lib/Computer'
require_relative 'lib/Game'
require_relative 'lib/Human'

class Main
  c = Computer.new
  h = Human.new('Alvin')
  g = Game.new(h, c)

  puts "Enter 1 if you would like to create the secret code \nEnter 2 if you would like to guess the secret code"
  answer = gets.chomp

  if answer == '1'
    c = Computer.new
    h = Human.new('Alvin')
    secret_code = h.generate_code
    g = Game.new(h, c)
    computer_guess = g.get_computer_guess_initial
    hints = g.check_code(computer_guess, secret_code)

    until hints == %w[Green Green Green Green]

      computer_guess = g.get_computer_guess(hints, computer_guess)
      hints = g.check_code(computer_guess, secret_code)
      check = g.check_code(c.guess, secret_code)
      puts "Secret code: #{secret_code}\nComputer Guess: #{computer_guess}\nHints: #{hints}"

      next unless check == %w[Green Green Green Green]

      puts "The correct guess is #{c.guess}"
      g.game_over_winner
      break

    end

  elsif answer == '2'
    hints = []
    secret_code = c.generate_code
    until hints == %w[Green Green Green Green]
      # debugger
      my_guess = g.get_player_guess
      hints = g.check_code(my_guess, secret_code)
      if h.number_of_guess == 13
        g.game_over_loser
        break
      end
      h.number_of_guess += 1
      puts hints
    end

    g.game_over_winner if h.number_of_guess <= 12
  else
    puts 'That is an invalid input'
  end

  # hints = []

  # until hints == ["Green", "Green", "Green", "Green"] do
  #   # debugger
  #   my_guess  = g.get_player_guess
  #   hints = g.check_code(my_guess, secret_code)
  #   if(h.number_of_guess == 13)
  #     g.game_over_loser
  #     break
  #   end
  #   puts hints
  # end

  # if(h.number_of_guess <= 12)
  #   g.game_over_winner

  # end
end
