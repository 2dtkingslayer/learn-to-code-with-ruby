# Define a longest_word method that accepts a string.
# The method should return the longest word in the string.
# If two words are tied for maximum length, the method should 
# return the last word in the phrase with that length.
# You can assume:
#  - Every two words are separated by a single space
#  - The string does not contain any symbols or characters
#
# Examples:
# The => indicates the expected return value
# longest_word("Bobby loves big scary kangaroos too")  => "kangaroos"
# longest_word("Ruby is my favorite language")         => "language" 
# longest_word("Hello")                                => "Hello" 
def longest_word(sentence)
  words = sentence.split(" ")

  longest_word = ""
  longest_word_length = 0

  words.each do |word|
    if word.length >= longest_word_length
      longest_word = word
      longest_word_length = word.length
    end
  end

  longest_word
end