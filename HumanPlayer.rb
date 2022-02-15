class HumanPlayer

  def initialize
    @name="Player 1"
  end

  def get_move
    pos=gets.chomp.split(" ").map(&:to_i)
    pos
  end

end