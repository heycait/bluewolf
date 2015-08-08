# this method assumes only one duplicate
# if more exist, use the select method or unique method or create a hash storing frequencies (although this takes up space)

def duplicate_number(array)
  raise ArgumentError, 'Parameter must be an array' unless array.is_a? Array
  raise ArgumentError, 'Parameter must be an array of integers' unless array.all? {|i| i.is_a?(Integer) }

  array.detect{ |number| array.count(number) > 1 }
end

# puts duplicate_number([1,2,2,2,4,5]) #=> 2
# puts duplicate_number([1,2,3,'4'])


def first_non_repeat_char(string)
  raise ArgumentError, 'Parameter must be a string' unless string.is_a? String

  char_array = string.upcase.chars
  unique = char_array.select { |char| char_array.count(char) == 1 }
  unique.first
end

# puts first_non_repeat_char("DEFD")  #=> E