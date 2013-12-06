class ApplicationController < ActionController::Base
  protect_from_forgery
    def after_sign_in_path_for(resource)
    "/myprofile"
    end
    
    after_filter :user_activity

    private

  def user_activity
   current_user.try :touch
  end
end
