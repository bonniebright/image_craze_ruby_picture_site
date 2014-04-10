class UsersController < ApplicationController

  before_filter :authorize, only: [:edit, :update]

  def index
    @users = User.all
    @photos = Photo.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :password, :email)
  end
end
