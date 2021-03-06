class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    @account = Account.create
    @user.account_id = @account.id
    
    if @user.save
      flash[:success] = "welcome to hungrycats."
      log_in(@user)
      redirect_to '/dashboard'
    else
      @account.delete
      render :new
    end
  end
  
  def login
    
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
