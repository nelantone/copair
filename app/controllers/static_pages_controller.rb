# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def index; end

  def thank_you_contact
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

  def thank_you_unconfirmed; end

  def user_demo; end
end
