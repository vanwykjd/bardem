class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_account_sign_up_params, if: :devise_controller?
  before_action :configure_user_sign_up_params, if: :devise_controller?

    
  protected
    
  def configure_account_sign_up_params
      acct_attrs = [:company_name, :email, :confirmation_token]
      devise_parameter_sanitizer.permit :sign_up, keys: acct_attrs
  end
  
  def configure_user_sign_up_params
      user_attrs = [:first_name, :last_name, :password, :password_confirmation, :role, :accounts_attributes => [:company_name, :id, :email]]
      devise_parameter_sanitizer.permit :sign_up, keys: user_attrs
  end
  
end
