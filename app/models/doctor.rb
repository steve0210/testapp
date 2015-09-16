class Doctor < ActiveRecord::Base
  validates :name, :presence => true, :length => { :maximum => 35 }

  def to_s
    name
  end
end
