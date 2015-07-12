class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = current_user.user.new(user_params)
    if @user.save
      render json: @user, status: :created, location: users_url
    else
      render json: @user.errors, status: :unprocessable_entity
  end


end
