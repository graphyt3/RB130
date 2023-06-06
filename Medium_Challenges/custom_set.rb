class CustomSet
  attr_reader :elements

  def initialize(input = [])
    @elements = input.uniq
  end

  def add(input)
    @elements << input unless elements.include?(input)
    self
  end

  def intersection(other_set)
    selected = elements.select {|element| other_set.contains?(element)}
    CustomSet.new(selected)
  end

  def difference(other_set)
    selected = elements.select {|element| !other_set.contains?(element)}
    CustomSet.new(selected)
  end

  def ==(other_set)
    elements.sort == other_set.elements.sort
    #eql?(other_set)
  end

  def empty?
    @elements.empty?
  end

  def contains?(input)
    @elements.include?(input)
  end

  def subset?(other_set)
    elements.all? { |element| other_set.elements.include?(element)}
  end

  def disjoint?(other_set)
    elements.all? { |element| !other_set.elements.include?(element)}
  end

  def eql?(other_set)
    elements.sort == other_set.elements.sort
    #elements.all? { |element| other_set.elements.include?(element)} && elements.size == other_set.elements.size
  end

  def union(other_set)
    new_elements = (@elements.clone + other_set.elements.clone).uniq
    CustomSet.new(new_elements)
  end
end