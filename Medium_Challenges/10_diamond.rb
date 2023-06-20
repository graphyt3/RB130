class Diamond

  def self.make_diamond(letter)
    first_half = ("A"..letter).to_a
    second_half = ("A"..letter).to_a.reverse
    range = first_half + second_half[1..-1]
    diamond_width = range.size
    
    results = []
    range.each_with_index do |char|
      results << make_row(char).center(diamond_width)
    end
    
    results.join("\n") + "\n"
  end

  def self.make_row(input)
    return 'A' if input == "A"
    return 'B B' if input == "B"
    input + determine_spaces(input) + input  
  end

  def self.determine_spaces(letter)
    letter_index = ('C'..letter).to_a.index(letter) + 1
    number_of_spaces = letter_index * 2 + 1
    ' ' * number_of_spaces
  end

end

#p Diamond.make_diamond("B")
#p Diamond.make_diamond("E")