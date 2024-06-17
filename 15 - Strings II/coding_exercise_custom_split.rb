# Define a custom_split method that accepts a piece of text and a delimiter.
# The method should return an array of the segments of the text
# after being split by the delimiter. Your solution should NOT
# use the built-in split method on a string. Assume that the delimiter
# will never be an empty string.
#
# Examples:
# The => indicates the expected return value
# custom_split("Hi, my name is Boris", " ")  => ["Hi,", "my", "name", "is", "Boris"]
# custom_split("ravioli is delicious", "i")  => ["rav", "ol", " ", "s del", "c", "ous"]
# custom_split("Zebra", "j")                 => ["Zebra"]
# custom_split(" hello", " ")                => ["hello"]
def custom_split(text, delimiter)
  segments = []
  
  current_segment = ""
  
  text.each_char do |char|
    if char == delimiter
      segments << current_segment unless current_segment.empty?
      current_segment = ""
    else
      current_segment << char
    end
  end
  
  segments << current_segment unless current_segment.empty?
  segments
end