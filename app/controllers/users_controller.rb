class UsersController < ApplicationController

  before_action :check_if_logged_in, except: [ :new ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
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


end
