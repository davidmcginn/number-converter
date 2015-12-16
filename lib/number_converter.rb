require 'number_converter/roman_numerals'

class NumberConverter
  def initialize(number_to_convert)
    @number = number_to_convert
    # throw exception if not integer
  end

  def self.hi
    roman = RomanNumerals.new
    return roman.hi
  end

  def convert(format)
    case format
    when 'roman'
      return RomanNumerals::convert(@number)
    else
      return @number
    end
  end
end