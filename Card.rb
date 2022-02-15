class Card
  attr_reader :value,:face_up
  ALPHABET = ("A".."Z").to_a
  def initialize
    @value = ALPHABET.sample
    @face_up = false
  end

  def hide
    @face_up = false
  end

  # def display
  #   p self.value
  # end

  # def == (card2)
  #   self.value == card2.value
  # end




end