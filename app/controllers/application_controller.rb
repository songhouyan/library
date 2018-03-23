class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_params, if: :devise_controller?

  protected

  def configure_permitted_params
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :name, :age, :gender, :bio, :avatar, :cover]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
