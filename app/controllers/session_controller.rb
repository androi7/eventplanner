class SessionController < ApplicationController

  def new
    if @current_user
      redirect_to user_path(@current_user.id)
    end
  end

  def create
    user = User.find_by email: params[:session][:email]
    # raise 'error'
    if user.present? && user.authenticate( params[:session][:password] )
      session[:user_id] = user.id
      redirect_to user_path(user.id)  # go to show page (/users/10 or whatever)
    else
      flash[:error] = 'Invalid email or password'
      redirect_to login_path  # show the form again
    end
  end

  def destroy
    session[:user_id] = nil  # This logs out the user
    redirect_to login_path
  end

end
