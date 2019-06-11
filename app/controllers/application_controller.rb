class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parametes, if: :devise_controller?

  protected

  def configure_permitted_parametes
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:fullname])
  end

end
