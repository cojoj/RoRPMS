class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(project_params)
    
    @project.status = 'Waiting'
    
    if @project.save
      redirect_to projects_path
    else
      render "new"
    end
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    
    if @project.update(params[:project].permit(:status))
      redirect_to projects_path
    else
      render 'edit'
    end
  end
  
  private
  
    def project_params
      params.require(:project).permit(:title)
    end

end
