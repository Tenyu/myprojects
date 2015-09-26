class ApplicationController < ActionController::Base
  def after_sign_out_path_for(resource)
    '/users/sign_in'
  end
   before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up).push(:nickname)
    end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
      
      protect_from_forgery with: :null_session
end
