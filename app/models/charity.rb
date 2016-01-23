class Charity < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  has_many :posts, dependent: :destroy

  has_many :charity_cities, dependent: :destroy
  has_many :cities, :through => :charity_city
  accepts_nested_attributes_for :charity_cities



  def self.search(search)
    where("name like ?", "%#{search}%") 
  end
end
