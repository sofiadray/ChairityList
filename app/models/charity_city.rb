class CharityCity < ActiveRecord::Base
  belongs_to :city
  belongs_to :charity

  accepts_nested_attributes_for :city
end
