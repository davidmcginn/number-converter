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

    reference_table.keys.each do |divisor|
      quotient, modulus = number.divmod(divisor)
      roman_numeral << reference_table[divisor] * quotient
      number = modulus
    end

    return roman_numeral
  end

end