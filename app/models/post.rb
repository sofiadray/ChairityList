class Post < ActiveRecord::Base
  belongs_to :charity, touch: true
  belongs_to :user
end
