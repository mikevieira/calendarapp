class Task < ApplicationRecord
  
  validates :name, presence: true
  validates :date, presence: true
  before_validation :set_enddate
  validate :timegood, :timedaygood

private
  def set_enddate
    if enddate.blank?
      self.enddate = date
    end 
  end  

  def timegood
    if enddate < date
      errors.add(:enddate, "End date must be after start date!")
    end
  end 

  def timedaygood
    if time < starttime
      errors.add(:time, "End time must be after start time!")
    end
  end 


end
