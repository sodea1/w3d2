class HumanPlayer

  def initialize (name)
    @name=name
  end

  def get_move
    p "enter a row,column"
    pos=gets.chomp.split(" ").map(&:to_i)
    pos
  end



end