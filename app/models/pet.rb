class Pet < ActiveRecord::Base
  self.inheritance_column = nil
  enum :type => [ :dog, :cat, :bird ]
  validates :name, :presence => true, :length => { :maximum => 35 }
  validates :breed, :presence => true, :length => { :maximum => 35 }
  validates :age, :weight, :last_visit, :presence => true

  def to_s
    name
  end
end
