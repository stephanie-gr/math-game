require './Player'

class Game 

  def initialize
    @player1 = Player.new('player one')
    @player2 = Player.new('player two')
    @players = [@player1, @player2].shuffle
    @round = 1
  end

  def game_over?
    @player1.loser? || @player2.loser?
  end

  def next_round
    puts "P1: #{@player1.lives}/3 vs. P2: #{@player2.lives}/3"
    puts "----New Turn-----"
    puts
    # next round
    @round += 1
    @players.rotate!
  end

  def display_winner
    winner = @player1.loser? ? @player2 : @player1

    puts
    puts "The winner is #{winner.name} with #{winner.lives}/3!"
  end

  def play
    # puts @player1.inspect
    # puts @player2.inspect


    until(game_over?) do

      next_round

      current_player = @players.first

      current_player.answer_question()

    end #closing the until

    display_winner


  end

end