class RomanNumerals
  def initialize
  end

  def self.convert_to(number_to_convert)
    raise "Argument is not an integer" unless number_to_convert.is_a? Integer

    raise "There is no Roman numeral for zero" if (number_to_convert==0)

    input_number = number = number_to_convert
    roman_numeral = ""

    reference_table = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }

    while (number > 0)
      reference_table.each do |reference_number, symbol|
        if (reference_number <= number)
          roman_numeral += symbol
          number -= reference_number
          break
        end
      end
    end

    return roman_numeral
  end

end