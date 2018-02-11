class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name
                                                         last_name
                                                         username
                                                         picture
                                                         contact_preference
                                                         shared_screen_tool
                                                         fluent_language])

    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name
                                                                last_name
                                                                username
                                                                picture
                                                                contact_preference
                                                                shared_screen_tool
                                                                fluent_language])
  end
end
