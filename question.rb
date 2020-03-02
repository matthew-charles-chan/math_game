class Question
  attr_accessor :prompt, :answer

  def initialize
    operators = [:+, :-, :*, :%]
    operator = operators.sample
    number1 = rand(1..20)
    number2 = rand(1..20)
    @answer = number1.send(operator, number2) 
    @prompt = "What is #{number1} #{operator} #{number2}?"
  end
end
