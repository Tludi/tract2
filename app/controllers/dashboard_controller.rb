class DashboardController < ApplicationController

  before_filter :require_login
  
  def index
    @account = @current_user.account
    @projects = @account.projects.all
    @project = @account.projects.new(params[:project])
  end
end
