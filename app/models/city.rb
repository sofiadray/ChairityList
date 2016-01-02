class City < ActiveRecord::Base
  has_many :charity_cities
  has_many :charities, :through => :charity_city
end
