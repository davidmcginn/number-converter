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
      'CMXCVIII' => 998, 
      'MDCCXII' => 1712,
      'MDCLXXXVII' => 1687,
      'DCLXVI' => 666,
      'MCCXII' => 1212,
      'CMXLVIII' => 948,
      'MCMXLII' => 1942
    }

    valid_numerals.each { |roman_numeral, number|
      assert_equal roman_numeral, NumberConverter.new(number).convert_to('roman')
    }
  end

  def test_invalid_argument_to_convert
    invalid_arguments = ['ABC', '!123', '567']

    invalid_arguments.each { |arg|
      exception = assert_raises(Exception) {
        number = NumberConverter.new(arg)
        number.convert_to('roman') # Should raise exception at this point
      }
      assert_equal(exception.message, "Argument is not an integer")
    }
  end

  def test_invalid_conversion_format
    number = 1712
    roman_numeral = 'MDCCXII'

    # Format argument is case insensitive
    assert_equal(roman_numeral, NumberConverter.new(number).convert_to('RoMaN'))

    exception = assert_raises(Exception) {
      NumberConverter.new(number).convert_to('roman_numerals')
    }

    assert_equal("Invalid conversion format", exception.message)
  end

  def test_zero
    exception = assert_raises(Exception) {
      NumberConverter.new(0).convert_to('roman')
    }

    assert_equal("There is no Roman numeral for zero", exception.message)
  end
end