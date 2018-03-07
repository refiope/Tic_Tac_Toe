def convert_input (input)
  return input = 0 if input == 'a'
  return input = 1 if input == 'b'
  return input =  2 if input == 'c'
end

def split_input (input)
  array_input = input.split('')
  row_input = convert_input(array_input[0].downcase)
  column_input = (array_input[1].to_i) - 1
  coordinate = Array.new([row_input, column_input])
  return coordinate
end

def check_input (input)
  return true if (split_input(input).all? {|coordinate| /[0-2]/ === coordinate.to_s})
  return false
end

puts check_input("A5ddd")
