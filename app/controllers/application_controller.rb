class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def after_sign_in_path_for(resource_or_scope)
    dashboard_path
  end
  
  def configure_permitted_parameters
    added_attrs = [:email, :password, :password_confirmation, :name, :amount, :company_name, :company_zip, :phone_number]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
