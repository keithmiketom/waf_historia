class Site < ActiveRecord::Base
   attr_accessible :user_id, :user_email, :profile_firstname
end
