class Anagram
  attr_reader :input

  def initialize(input)
    @input = input.downcase
  end

  def match(words)
    input_format = input.chars.sort
    words.select do |word|
      input_format == word.downcase.chars.sort && input != word.downcase
    end    
  end
end