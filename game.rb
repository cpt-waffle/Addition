require ('./player')
require ('./question')

class Game
  def initialize
    @player1 = Players.new
    @player2 = Players.new
  end

  # def turn

  # end

  def start_game

    # some_question = Question.new
    # some_question.generateNumber
    # some_question.poseQuestion
    # some_question.solicitAnswer

    while @lives > 0 do
        currentplayer = @player1
      if some_question.solicitAnswer == true
        currentplayer = @player2

        some_question = Question.new
        some_question.generateNumber
        some_question.poseQuestion
        some_question.solicitAnswer
        puts some_question.solicitAnswer
      else
        currentplayer.lose_life
        currentplayer = @player2

        some_question = Question.new
        some_question.generateNumber
        some_question.poseQuestion
        some_question.solicitAnswer
        puts some_question.solicitAnswer
      end
    end
  end
end



