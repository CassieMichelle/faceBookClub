class Post < ActiveRecord::Base
  attr_accessible :comment
  helper :profile
	

  # belongs_to :forum
  has_one :user
end
