class UsersController < ApplicationController

  before_action :check_if_logged_in, except: [ :new, :create ]

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.persisted?
      session[:user_id] = @user.id  # automatically logged in, but should log out after 24 hours (to-do)
      redirect_to '/'
    else
      # redirect_to '/users'
      render :new
    end

  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to root_path
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
