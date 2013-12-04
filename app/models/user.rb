class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username,  :reset_password_token
  # attr_accessible :title, :body
  
  has_one :profiles, :dependent => :destroy
  has_many :topics, :dependent => :destroy
has_many :posts, :dependent => :destroy
  
   validates :email, presence: true

  
  accepts_nested_attributes_for :profiles
end
