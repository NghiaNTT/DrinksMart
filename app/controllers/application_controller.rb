class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    return request.env['omniauth.origin'] || session[:user_return_to] || root_path
  end


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up do |user|
      user.permit :name, :email, :password, :password_confirmation,
        :remember_me, :avatar
    end
    devise_parameter_sanitizer.permit :account_update do |user|
      user.permit :name, :email, :password, :password_confirmation,
        :current_password, :avatar
    end
  end
end
