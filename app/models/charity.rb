class Charity < ActiveRecord::Base
  belongs_to :category
  has_many :posts, dependent: :destroy

  has_many :charity_cities
  has_many :cities, :through => :charity_city

  searchable do
    text :name
    text :overview
    text :content do
      posts.map(&:content)
    end
    text :title do
      posts.map(&:title)
    end
  end
  
end
