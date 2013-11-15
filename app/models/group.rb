class Group < ActiveRecord::Base
  attr_accessible :forum_id, :users
  has_and_belongs_to_many :users 
  has_one :forum
end
