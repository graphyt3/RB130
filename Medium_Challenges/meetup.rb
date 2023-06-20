require 'date'

class Meetup
  MONTHLY_DESCRIPTORS = {
    'first' => 1,
    'second' => 8,
    'third' => 15,
    'fourth' => 22,
    'fifth' => 29,
    'teenth' => 13,
    'last' => nil
  }

  def initialize(year, month)
    @year = year
    @month = month
    @days_in_month = Date.civil(@year, @month, -1).day
  end

  def day(weekday, descriptor)
    @weekday = weekday.downcase
    @descriptor = descriptor.downcase

    first_day = first_day_calculator(@descriptor)
    last_day = [first_day + 6, @days_in_month].min

    (first_day..last_day).each do |day|
      date = Date.civil(@year, @month, day) 
      return date if date.send(@weekday + '?')
    end
    nil

  end
  
  private

  def first_day_calculator(descriptor)
    MONTHLY_DESCRIPTORS[descriptor] || (@days_in_month - 6)
  end

end

#p Meetup.new(2013, 4).day('monday', 'first')