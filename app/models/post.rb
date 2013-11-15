class Post < ActiveRecord::Base
  attr_accessible :comment, :user
  
	

  # belongs_to :forum
  has_one :user
end
