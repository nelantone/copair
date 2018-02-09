class RegistrationsController < Devise::RegistrationsController
  protected

  def after_inactive_sign_up_path_for(_resource)
    '/static_pages/thank_you_unconfirmed'
  end
end
