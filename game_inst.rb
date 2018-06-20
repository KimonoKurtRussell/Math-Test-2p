module Math_Game_2p

class Math_Game
  attr_accessor :player_1, :player_2, :turn
  def initialize
    @round = 0
    @player_1 = Player.new(1)
    @player_2 = Player.new(2)
    game_start
  end

    def game_start
      puts "-+-+-+-+-+-+-+-+ NEW TURN -+-+-+-+-+-+-+-+"
      @round += 1
      if (@round.odd?)
        current = @player_1
        Question.new(current)
      else
        current = @player_2
        Question.new(current)
      end
      if (game_over?)
        final_score
        puts "-+-+-+-+-+-+-+-+ GAME OVER -+-+-+-+-+-+-+-+"
      else
        player_score
        game_start
      end
    end

    def game_over?
      (@player_1.lives == 0) || (@player_2.lives == 0)
    end

    def player_score
       puts "The score is : Player 1: #{@player_1.lives}/3 vs Player 2: #{@player_2.lives}/3 "
    end

    def final_score
      if @player_1.lives > @player_2.lives
        puts "Player 1 wins with a score of #{@player_1.lives}/3 "
      else
        puts "Player 2 wins with a score of #{@player_2.lives}/3 "
      end
    end
  end
end






