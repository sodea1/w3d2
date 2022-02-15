class Board

  def initialize
    @grid=Array.new(2){Array.new(2)}
    @alphabet = ("A".."Z").to_a
  end

  def populate
    while @grid.flatten.include?(nil)
      random_letter = @alphabet.sample
      while @grid.flatten.count(random_letter) < 2
        row = rand(0...@grid.length)
        col = rand(0...@grid[0].length)
        @grid[row][col]=random_letter if @grid[row][col].nil?
      end
    end
    # @grid
  end

  def render
    
  end




end