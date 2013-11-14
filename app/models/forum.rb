class Forum < ActiveRecord::Base
  attr_accessible :book_id, :deadline, :post_id

  has_one :book
  has_one :post
  belongs_to :group
end
