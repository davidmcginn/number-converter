require 'minitest/autorun'
require './lib/integer'

class NumberConverterTest < Minitest::Test
  def test_valid_roman_numerals
    valid_numerals = {
      'X' => 10,
      'V' => 5,
      'LXIV' => 64,
      'CCXXVI' => 226,
      'CM' => 900,
      'CMXCVIII' => 998, 
      'MDCCXII' => 1712,
      'MDCLXXXVII' => 1687,
      'DCLXVI' => 666,
      'MCCXII' => 1212,
      'CMXLVIII' => 948,
      'MCMXLII' => 1942
    }

    valid_numerals.each { |roman_numeral, number|
      assert_equal roman_numeral, number.to_roman
    }
  end
end