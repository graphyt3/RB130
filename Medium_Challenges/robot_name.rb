class Robot
  @@names = []

  def name
    return @name if @name
    temp = ''
    loop do 
      temp = generate_name
      break unless @@names.include?(temp)
    end
    @@names << temp
    @name = temp
  end

  def reset
    @@names.delete(name)
    @name = nil
  end

  private

  def generate_name
    new_name = ''
    2.times { new_name << ('A'..'Z').to_a.sample}
    3.times { new_name << rand(10).to_s}
    new_name
  end
end

p Robot.new.name