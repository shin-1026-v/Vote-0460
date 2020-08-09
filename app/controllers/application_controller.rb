class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper  

  private

  # ユーザーのログインを確認する
    def logged_in_user
      unless logged_in?
        store_location
        #flash[:danger] = "Please log in."
        redirect_to root_url
      end
    end

    def current_user 
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
      !current_user.nil?
    end
    
end



