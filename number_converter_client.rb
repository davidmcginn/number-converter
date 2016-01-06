# require 'number_converter'
require './lib/integer'

print "Please enter the integers that you would like to convert to Roman numerals. Enter = when you are finished.\n"
$/ = "="
input_numbers = STDIN.gets.split("\n")

# Remove '=' from array
input_numbers.pop if (input_numbers[-1]=="=")
input_numbers[-1].gsub!("=", "")

print "Results:\n"
input_numbers.each do |number|
  
  if !(number =~ /\A\d+\z/)
    puts "#{number} => Error: Can only convert positive integers"
  else
    puts "#{number} => #{number.to_i.to_roman}"
  end
end