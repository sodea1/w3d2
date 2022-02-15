require_relative "Board.rb"
require_relative "Card.rb"
require_relative "HumanPlayer.rb"
class Game

  def self.create_board
    board = Board.new
    board.populate
    board.render
  end

  def initialize
    @board=Game.create_board
    @player=HumanPlayer.new
  end

  def play
    p "Play first move: enter a row,column:"
    first_move = @player.get_move #moves refer to a pos
    @board.play_move(first_move)
    @board.render
    p "Play second move: enter a row,column:"
    second_move = @player.get_move
    @board.play_move(second_move)
    if @board[first_move] == @board[second_move]
      @board.render
    else
      @board.render
      @board[first_move].hide
      @board[second_move].hide
      sleep(2)
      system("clear")
      @board.render
    end
  end

end