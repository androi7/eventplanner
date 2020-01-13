class UsersController < ApplicationController

  before_action :check_if_logged_in, except: [ :new ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.persisted?
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
