class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address1, :address2, :city, :firstname, :lastname, :mobile, :user_id
end
