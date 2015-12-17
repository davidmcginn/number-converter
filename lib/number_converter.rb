require 'number_converter/roman_numerals'

class NumberConverter
  def initialize(number_to_convert)
    @number_to_convert = number_to_convert
  end

  def convert_to(format)
    case format.downcase
    when 'roman'
      return RomanNumerals::convert_to(@number_to_convert)
    else
      raise "Invalid conversion format"
    end
  end
end