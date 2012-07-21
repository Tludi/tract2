class DashboardController < ApplicationController
  def index
    @user = User.all
    @projects = Project.all

    @project = Project.new
  end
end
