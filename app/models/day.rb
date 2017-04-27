class Day 
  attr_reader :day
  def initialize(day=Date.today)
    @day = day 

  end 

  def tasks
     Task.where date: @day 
  end 
end 