class Forum < ActiveRecord::Base
  attr_accessible :book_id, :deadline, :posts

  has_one :book
  has_many :posts
  belongs_to :group
end
