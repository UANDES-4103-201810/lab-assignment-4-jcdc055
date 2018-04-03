class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  validate :end_after_start
  

private
def end_after_start
    if self.start_date < DateTime.now.to_date
    errors.add(:start_date, "must be after the start date") 
  end 
 end
end
