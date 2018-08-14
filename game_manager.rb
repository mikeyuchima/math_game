require './players.rb'
require './question.rb'

class GameManager
    def initialize()
        @player1 = Players.new('Player1')
        @player2 = Players.new('Player 2')
        @players = [@player1, @player2]
    end

    def players
        
    end

    def get_guesser

    end

    def whos_turn(player)
        puts '---- NEW TURN ----'
        question = Question.new

        puts "#{player.name}: What does #{question.num1} plus #{question.num2} equal?"

        player_answer = (gets.chomp).to_i

        if (player_answer != question.answer)
            player.damaged
            puts "Noooppeeee....."
        else
            puts "You Got IT!"
        end
    end

    def loop
        while @player1.lives > 0 && @player2.lives > 0
            whos_turn(@players[0])
            @players.rotate!
        end
    end
  end

  game = GameManager.new
  game.loop