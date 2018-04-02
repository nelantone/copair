# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  protected

  def after_inactive_sign_up_path_for(_resource)
    '/static_pages/thank_you_unconfirmed'
  end

  def update_resource(resource, params)
    params['future_skills'].delete_if(&:blank?)
    params['present_skills'].delete_if(&:blank?)
    resource.update_without_password(params)
  end
end
