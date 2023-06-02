class Clock
  attr_accessor :hour, :minute

  ONE_DAY = 60 * 24

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute = 00)
    new(hour, minute)
  end

  def to_s
    "#{"%02d" % @hour}:#{"%02d" % @minute}"
  end

  def ==(other)
    self.to_s == other.to_s
  end

  def -(input)
    total_time = compute_minutes_since_midnight - input
    while total_time < ONE_DAY
      total_time += ONE_DAY
    end
    compute_time_from(total_time)
    #temp = Clock.new(hour, minute - input)
    #temp.minute -= other
    #temp
  end

  def +(input)
    total_time = compute_minutes_since_midnight + input
    while total_time > ONE_DAY
      total_time -= ONE_DAY
    end
    compute_time_from(total_time)
    #temp = Clock.new(hour, minute + input)
    #temp.minute += other
    #temp
  end

  def compute_minutes_since_midnight
    total_minutes = 60 * hour + minute
    total_minutes % ONE_DAY
  end

  def compute_time_from(minutes_since_midnight)
    hours, minutes = minutes_since_midnight.divmod(60)
    hours %= 24
    self.class.new(hours, minutes)
  end

end

puts Clock.at(0)