gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test

  def test_it_can_create_a_char_array_from_string
    scrabble = Scrabble.new
    word = "cat"

    assert_equal ["C", "A", "T"], scrabble.char_set(word)
  end

  def test_it_can_score_a_single_letter
    word = ""

    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end
end


# def test_it_can_create_a_hash_set_from_array
#   scrabble = Scrabble.new
#   char_set = ["C", "A", "T"]
#   word_set_2 = {}
#
#   assert_equal word_set_2 = {"C"=>0, "A"=>0, "T"=>0}, scrabble.char_index(char_set)
# end
#
# def test_it_can_add_two_hashes_together
#   scrabble = Scrabble.new
#   values = {
#     "A"=>1, "B"=>3, "C"=>3, "D"=>2,
#     "E"=>1, "F"=>4, "G"=>2, "H"=>4,
#     "I"=>1, "J"=>8, "K"=>5, "L"=>1,
#     "M"=>3, "N"=>1, "O"=>1, "P"=>3,
#     "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
#     "U"=>1, "V"=>4, "W"=>4, "X"=>8,
#     "Y"=>4, "Z"=>10
#   }
#   word_set_2 = {"C"=>0, "A"=>0, "T"=>0}
#
#   assert_equal checker = {"C"=>3, "A"=>1, "T"=>1, "B"=>3, "D"=>2, "E"=>1, "F"=>4, "G"=>2, "H"=>4, "I"=>1, "J"=>8, "K"=>5, "L"=>1, "M"=>3, "N"=>1, "O"=>1, "P"=>3, "Q"=>10, "R"=>1, "S"=>1, "U"=>1, "V"=>4, "W"=>4, "X"=>8, "Y"=>4, "Z"=>10}, scrabble.add_up(word_set_2, values)
# end
#
# def test_it_can_create_a_new_hash_with_new_letter_values
#   scrabble = Scrabble.new
#   char_set = ["C", "A", "T"]
#   checker = {"C"=>3, "A"=>1, "T"=>1, "B"=>3, "D"=>2, "E"=>1, "F"=>4, "G"=>2, "H"=>4, "I"=>1, "J"=>8, "K"=>5, "L"=>1, "M"=>3, "N"=>1, "O"=>1, "P"=>3, "Q"=>10, "R"=>1, "S"=>1, "U"=>1, "V"=>4, "W"=>4, "X"=>8, "Y"=>4, "Z"=>10}
#
#   assert_equal extracted_values = {"C"=>3, "A"=>1, "T"=>1}, scrabble.extract_new_values(char_set, checker)
# end
#
# def test_it_can_score_a_single_letter
#   scrabble = Scrabble.new
#   user_input = ""
#   scrabble.score(user_input)
#
#   assert_equal 1, scrabble.score("a")
#   assert_equal 4, scrabble.score("f")
# end
