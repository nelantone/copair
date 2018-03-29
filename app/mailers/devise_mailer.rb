# frozen_string_literal: true

class DeviseMailer < Devise::Mailer
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views

  def confirmation_instructions(record, token, opts = {})
    headers['Custom-header'] = 'Copair Team'
    opts[:from] = 'team@we-copair.com'
    opts[:reply_to] = 'team@we-copair.com'
    super
  end
end
