class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user_tweets = Tweet.where(user_id: @user.id).limit(100).order(id: "DESC")

    @follow = Follow.new
    @follow.target_id = @user.id

    if user_signed_in? then
      @followed = Follow.find_by(user_id: current_user.id, target_id: @user.id)
    else
      @followed = nil
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end
