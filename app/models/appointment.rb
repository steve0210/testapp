class Appointment < ActiveRecord::Base
  belongs_to :pet
  belongs_to :doctor
  validates :pet, :doctor, :reason_for_visit, :date_of_visit, :presence => true
  validate :date_of_visit_cannot_be_in_the_past
  
  def date_of_visit_cannot_be_in_the_past
    if date_of_visit.present? && date_of_visit < Date.today
      errors.add(:date_of_visit, "can't be in the past")
    end    
  end
end
