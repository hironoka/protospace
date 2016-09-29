class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :member, :profile, :works])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
end

def alert_user_edit_error_message
  flash[:error] = 'Your information is not enough'
end

def alert_user_edit_successe_message
  flash[:success] = 'Edit information successfully'
end

end
