class DashboardController < ApplicationController

  before_filter :require_login, :load_account
  
  def index
    @projects = @account.projects.all
    @project = @account.projects.new
  end

  def create
    @project = @account.projects.build(params[:project])
    if @project.save
      redirect_to dashboard_path, :notice => "Project finally Created!"
    else
      render :index
    end
  end

  private
    def load_account
      @account = current_user.account
    end

end
