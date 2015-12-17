require 'number_converter'

print "Please enter the integers that you would like to convert to Roman numerals. Enter = when you are finished.\n"
$/ = "="
input_numbers = STDIN.gets.split("\n")

# Remove '=' from array
input_numbers.pop if (input_numbers[-1]=="=")
input_numbers[-1].gsub!("=", "")

print "Results:\n"
input_numbers.each do |number|
  number_as_integer = number.to_i

  if (number_as_integer > 0)
    roman_numeral = NumberConverter.new(number_as_integer).convert_to('roman')
    puts "#{number_as_integer} => #{roman_numeral}"
  else
    puts "#{number} => Error: Can only convert positive integers"
  end

end