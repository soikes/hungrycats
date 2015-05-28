class DashboardController < ApplicationController
  include SessionsHelper
  layout "logged_in_user"
  
  def index
    @agents = Agent.where(account_id: current_account.id)
  end
  
end
