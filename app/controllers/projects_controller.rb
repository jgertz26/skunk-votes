class ProjectsController < ApplicationController
  def index
    case params[:status]
    when 'all'
      @projects = Project.all
    when 'completed'
      @projects = Project.where(status: 'completed')
    when 'in development'
      @projects = Project.where(status: 'in development')
    when 'brainstorming'
      @projects = Project.where(status: 'brainstorming')
    else
      @projects = Project.all
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.users = [current_user]
    if @project.save
      flash[:notice] = "New project added: #{@project.name}"
      redirect_to project_path(@project)
    else
      flash[:error] = @project.errors.full_messages.join(". ") + "."
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def project_params
    params.require(:project).permit(:name, :status, :description)
  end
end
