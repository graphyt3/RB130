class Series
  attr_reader :input

  def initialize(string)
    @input = string.chars.map(&:to_i)
  end

  def slices(consecutive)
    raise ArgumentError if consecutive > @input.size
    results = []
    last_idx = (@input.size - consecutive)
    0.upto(last_idx) do |idx|
      results << @input[idx, consecutive]
    end
    results
  end
end

#series = Series.new('01234')
#p series.slices(2)