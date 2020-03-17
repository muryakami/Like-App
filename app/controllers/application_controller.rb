class ApplicationController < ActionController::Base
  include SessionsHelper

  private

    def logged_in_user
      unless logged_in?
        redirect_to login_url
      end
    end

    def correct_user
      redirect_to login_url unless current_user?(@user)
    end

    def admin_user
      redirect_to login_url unless current_user.admin?
    end
end
