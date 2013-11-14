class User < ActiveRecord::Base
  has_many :friendships
  has_many :friends, :through => :friendships
  has_and_belongs_to_many :books
  has_and_belongs_to_many :groups
  has_many :forums, :through => :groups
  belongs_to :post
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :screen_name, :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :gender, :city, :state
  

  validates :screen_name, presence: true, :uniqueness => true
  validates :screen_name, length: { in: 6..32 }, on: :create
  validates :screen_name, length: { in: 6..32 }, on: :update, allow_blank: true

  ALL_FIELDS = %w(first_name last_name gender city state )
  STRING_FIELDS = %w(first_name last_name city state)
  VALID_GENDERS = ["Male", "Female"]

  validates_length_of STRING_FIELDS,
                      :maximum => 255
  
  def search(search)
      if search
        where('last_name LIKE ?', "%#{search}%")
      end
  end







end
