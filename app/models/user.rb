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
  has_many :user_friendships
  has_many :friends, through: :user_friendships
  
   validates :email, presence: true

  acts_as_tagger
  accepts_nested_attributes_for :profiles 
  
  def online?
    updated_at > 10.minutes.ago
  end
  
  def to_param
    
   profile_name
  end
  
  def gravatar_url
    stripped_email = email.strip
    downcased_email = stripped_email.downcase
    hash = Digest::MD5.hexdigest(downcased_email)
    
    "http://gravatar.com/avatar/#{hash}"
    
  end
end
