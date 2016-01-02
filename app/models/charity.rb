class Charity < ActiveRecord::Base
  belongs_to :category
  has_many :posts, dependent: :destroy

  has_many :charity_cities
  has_many :cities, :through => :charity_city
end
