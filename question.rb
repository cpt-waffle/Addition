require('./player')

class Question

  attr_reader :number1, :number2, :string, :sum

  def initialize
    @number1 = 0
    @number2 = 0
    @sum = number1 + number2
  end

  def generateNumber ()
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @sum = @number1 + @number2
    @string = "What does #{number1} + #{number2} equal?"
  end

  def poseQuestion ()
    puts @string
  end

  def solicitAnswer
    answer = gets.chomp.to_i

    if answer == @sum
      return true
    else
      return false
    end
  end

end