class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  delegate :can_read?, :can_create?, :can_update?, :can_delete?, to: :current_user
  helper_method :can_read?, :can_create?, :can_update?, :can_delete?

  private
    def current_user
      # comment this line if you want to be able to log-in in development.
      return @current_user ||= User.first if Rails.env.development?

      if session[:user_id] then
        @current_user ||= User.find(session[:user_id])
      else
        # we create a new user for the Authority Gem
        @current_user = User.new
      end
    end
end
