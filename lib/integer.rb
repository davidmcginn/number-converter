class Integer

  def to_roman
    number = self
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