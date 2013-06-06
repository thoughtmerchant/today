class Rating < ActiveRecord::Base
  validates_presence_of :name, :score
  validates :score, inclusion: [-1, 0, 1]

  attr_accessible :name, :score
end
