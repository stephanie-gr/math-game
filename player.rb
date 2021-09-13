class Player

  attr_reader :name

  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def loser?
    @lives < 1
  end

  def answer_question()

    # create two random numbers between 1 and 20
    num1 = rand(1..20)
    num2 = rand(1..20)

    puts "#{@name}: What does #{num1} plus #{num2} equal?"
    user_answer = gets.chomp.to_i


    # calculate if user answered correctly and set points accordingly
    if ((num1 + num2) != user_answer)
      points = 1
    else points = 0
    end

    @lives -= points

  end

end