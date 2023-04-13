class Triangle
  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArgumentError.new "Invalid triangle lengths" unless valid?
  end

  def valid?
    sides.all? {|side| side > 0} &&
    sides[0] + sides[1] > sides[2] &&
    sides[1] + sides[2] > sides[0] &&
    sides[0] + sides[2] > sides[1]
  end

  def kind
    uniq_sizes = sides.uniq.size
    case uniq_sizes
    when 1 then return 'equilateral'
    when 2 then return 'isosceles'
    when 3 then return 'scalene'
    end
  end


end
