class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to '/dashboard'
    else
      flash.now[:error] = "whoops, your email or password was incorrect."
      render 'new'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
end
