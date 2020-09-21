class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    name = params["user"]["name"]
    @user = User.create(name: name)
    redirect_to user_path(@user)
  end

  def destroy
    User.destroy(params[:id])
    redirect_to users_path
  end


end
