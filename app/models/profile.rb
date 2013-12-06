class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address1, :address2, :city, :county, :firstname, :lastname, :mobile, :user_id, :user_email, :user_attributes
  
  accepts_nested_attributes_for :user
end
