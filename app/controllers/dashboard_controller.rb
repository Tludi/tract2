class DashboardController < ApplicationController

  before_filter :require_login
  
  def index
    @user = User.all
    @projects = Project.all
    # @projects = current_user.projects
    @project = Project.new
  end
end
