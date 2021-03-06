class ApplicationController < ActionController::Base

protect_from_forgery with: :exception


before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end


  def after_sign_in_path_for(resource)
    users_path
  end




end
