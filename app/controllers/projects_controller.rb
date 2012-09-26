class ProjectsController < ApplicationController

  before_filter :load_account

  def index
    @projects = @account.projects.all
    @project = @account.projects.new
    @company_name = "Diligent Agility"
    respond_to do |format|
      format.html
      format.json { render json: @projects }
    end
  end

  def show
    @project = @account.projects.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @project }
    end
  end

  def new
    @project = Project.new

    respond_to do |format|
      format.html
      format.json { render json: @project }
    end
  end

  def create
    @project = @account.projects.build(params[:project])
    if @project.save
      redirect_to dashboard_path, :notice => "Project Created!"
    else
      render :index
    end
  end

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to root_path, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end  
  end

  def edit
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to :dashboard }
      format.json { head :no_content }
    end
  end

  private

    def load_account
      @account = @current_user.account
    end
      
end
