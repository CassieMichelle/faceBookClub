class Book < ActiveRecord::Base
  attr_accessible :title, :author, :picture, :users

  has_and_belongs_to_many :users
  belongs_to :forum
end
