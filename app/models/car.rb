class Car < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :company
  validates_uniqueness_of :name
  ajaxful_rateable :dimensions => [:speed, :beauty, :price]
end
