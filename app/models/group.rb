class Group < ActiveRecord::Base
  attr_accessible :forum_id, :user_id
  has_and_belongs_to_many :users 
  has_one :forum
end
