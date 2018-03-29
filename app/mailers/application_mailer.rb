# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'team@we-copair.com'
  layout 'mailer'
end
