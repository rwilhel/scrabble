class Scrabble
  attr_reader :word, :extracted_values

  def initialize
    @word = word
    @char_set = []
    @char_index = {}
    @values = {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
    @final_score = []
  end

  def char_set(word)
    @char_set = word.upcase.scan(/./)
  end

  def char_index(char_set)
    @word_set_2 = Hash[char_set.map {|char| [char, 0]}]
  end

  def add_up(word_set_2, values)
    checker = word_set_2.merge(values){ |x, word_value, key_value| word_value + key_value }
  end

  def extract_new_values(char_set, checker)
    @extracted_values = checker.reject { |x| !char_set.include?(x.to_s)}
  end

  def score(user_input)
    real_key = user_input.upcase @values.values_at(real_key).inject(0, :+)
  end

  def total_score(extracted_values)
    extracted_values.values.inject(0) { |x, y| x + y }
  end
end
