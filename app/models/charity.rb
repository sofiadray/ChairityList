class Charity < ActiveRecord::Base
  belongs_to :category
  has_many :posts, dependent: :destroy

  has_many :charity_cities
  has_many :cities, :through => :charity_city

  accepts_nested_attributes_for :charity_cities



  def self.search(search)
    where("name like ?", "%#{search}%") 
  end
end
