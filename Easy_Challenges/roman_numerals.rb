class RomanNumeral
  COLLECTION = {
  1000 => 'M',
  500 => 'D', 
  100 => 'C', 
  50 => 'L',
  10 => 'X',
  5 => 'V',
  1 => 'I'
  }.freeze

  def initialize(input)
    @number = input
  end

  def to_roman
    results = ''
    integer = @number.clone
    
    COLLECTION.each do |key, value|
      multiple, remainder = integer.divmod(key)
      if multiple > 0
        results += (value * multiple)
      end
        integer = remainder
    end
    results
  end
end