# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[home index show]
  before_action :set_user, only: %i[show]

  # GET /users
  # GET /users.json
  def home
    # @users = User.all
    render layout: false
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :username,
                                 :picture,
                                 :contact_preference,
                                 :shared_screen_tool,
                                 :fluent_language,
                                 :location,
                                 { present_skills: [] },
                                 { future_skills: [] },
                                 :average_skill_level,
                                 :short_goal,
                                 :medium_goal,
                                 :long_goal,
                                 :resume,
                                 :code_reviewer,
                                 :social_media_info)
  end
end
