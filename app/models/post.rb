class Post < ActiveRecord::Base
  attr_accessible :comment, :user_id

  belongs_to :forum
  has_one :user
end
