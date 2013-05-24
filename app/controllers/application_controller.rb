class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  
  private
    def current_user
      if Rails.env.development? then
        @current_user ||= User.first
      else
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
      end
    end
end
