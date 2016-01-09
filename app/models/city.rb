class City < ActiveRecord::Base
  has_many :charity_cities
  has_many :charities, :through => :charity_city

  accepts_nested_attributes_for :charity_cities

end
