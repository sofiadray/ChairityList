class City < ActiveRecord::Base
  has_many :charities, :through => :charity_city
end
