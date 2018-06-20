module Math_Game_2p

  class Question
    def initialize current_players_question
      @number1 = rand(1..5000) + 1
      @number2 = rand(1..2999) + 1
      @question = @number1 + @number2
      math_question(current_players_question)
    end

    def math_question (current)
      puts "#{current.id} what is #{@number1} plus #{@number2} ?"
      player_answer = gets.chomp.to_i
      if (player_answer == @question)
        puts "#{current.id}: YOU ARE CORRECT !"
      else
        puts "#{current.id}: YOU ARE INCORRECT !"
        current.lives -= 1
      end
    end
  end
end
