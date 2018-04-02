# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,
                                                       :last_name,
                                                       :username,
                                                       :picture,
                                                       :contact_preference,
                                                       :shared_screen_tool,
                                                       :fluent_language,
                                                       :location,
                                                       { present_skills: [] },
                                                       { future_skills: [] },
                                                       :future_skills,
                                                       :average_skill_level,
                                                       :short_goal,
                                                       :medium_goal,
                                                       :long_goal,
                                                       :resume,
                                                       :code_reviewer,
                                                       :social_media_info])

    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name,
                                                              :last_name,
                                                              :username,
                                                              :picture,
                                                              :contact_preference,
                                                              :shared_screen_tool,
                                                              :fluent_language,
                                                              :location,
                                                              { present_skills: [] },
                                                              { future_skills: [] },
                                                              :future_skills,
                                                              :average_skill_level,
                                                              :short_goal,
                                                              :medium_goal,
                                                              :long_goal,
                                                              :resume,
                                                              :code_reviewer,
                                                              :social_media_info])
  end
end
