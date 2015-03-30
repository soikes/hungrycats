class PagesController < ApplicationController
  skip_before_action :require_login, only: [:home]
  
  def home
    if logged_in?
      redirect_to '/dashboard'
    end
  end
end
