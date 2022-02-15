require_relative "./Card.rb"
require "byebug"
class Board
  attr_accessor :grid

  def initialize (size=4)
    if size.even?
      @grid=Array.new(size){Array.new(size)}
    else
      raise "invalid dimensions"
    end
  end
  

  def [](pos) # 1, 2
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val) # 1, 2
    row, col = pos
    @grid[row][col] = val
  end

  def populate
    # byebug
    while @grid.flatten.include?(nil)
      # random_letter = @alphabet.sample
      random_card = Card.new
      while @grid.flatten.count(random_card) < 2
        row = rand(0...@grid.length)
        col = rand(0...@grid[0].length)
        pos = row, col
        self[pos]=random_card if self[pos].nil?
      end
    end
    true
  end

  def render
    @grid.each do |row|
      temp=[]
      row.each do |card|
        if card.face_up
          temp << card.value
        else
          temp << " "
        end
      end
      puts temp.join(" ")
    end
    true
  end

  def won?

  end

  def play_move (pos)
    self[pos].face_up = true
  end




end