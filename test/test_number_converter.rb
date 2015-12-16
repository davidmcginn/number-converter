require 'minitest/autorun'
require 'number_converter'

class NumberConverterTest < Minitest::Test
  def test_valid_roman_numerals
    valid_numerals = {
      'X' => 10,
      'V' => 5,
      'LXIV' => 64,
      'CCXXVI' => 226,
      'CM' => 900,
      'CMXCVIII' => 998, 'MDCCXII' => 1712
    }

    valid_numerals.each { |roman_numeral, number|
      assert_equal roman_numeral, NumberConverter.new(number).convert('roman')
    }
  end
end