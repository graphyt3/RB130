class DNA
  attr_reader :input

  def initialize(input_strand)
    @input = input_strand
  end

  def hamming_distance(other)
    string_size = shorter?(other)
    counter = 0
    string_size.times do |idx|
      counter += 1 if input[idx] != other[idx]
    end
    counter
  end

  def shorter?(string)
    input.size > string.size ? string.size : input.size 
  end
end


