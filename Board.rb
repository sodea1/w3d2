require_relative "./Card.rb"
require "byebug"
class Board
  attr_reader :grid,:size

  def initialize (size=2)
    if size.even?
      @grid=Array.new(size){Array.new(size)}
    else
      raise "invalid dimensions"
    end
    @size=size
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
      random_card = Card.new # card1
      # char = random_card.value # "A"
      second_random = random_card.dup
      while !@grid.flatten.include?(second_random)
        row = rand(0...@grid.length)
        col = rand(0...@grid[0].length)
        pos = row, col
        if @grid.flatten.include?(random_card)
          self[pos] = second_random
        else
          self[pos] = random_card
        end
        # self[pos]=random_card if self[pos].nil?
      end
    end
    true
  end

  def render
    arr = [" "] << (0...@size).to_a
    puts arr.join(" ")
    @grid.each_with_index do |row,i|
      temp=[i]
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
    @grid.flatten.all?{|ele| ele.face_up}
  end

  def play_move (pos)
      self[pos].face_up = true # game board at pos [1, 1]
  end




end