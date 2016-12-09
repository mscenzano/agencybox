class ProjectsController < ApplicationController

  before_filter :find_client, except: :index
  before_filter :client_project_find, only: :show, :destroy

  def index
    @projects = Project.order("created_at DESC")
  end

  def new
    @project = @client.projects.new
  end

  def create
    @project = @client.projects.create(project_params)
    unless @project
      render 'error'
    else 
      redirect_to 'show'
    end
  end

  def show
  end

  def destroy
    @project.destroy
  end

  private

  def find_client
    @client = Client.find_by(:id params[:client_id])
  end

  def project_params
    params.require(:project).permit(:name, :description)
  end

  def client_project_find
    @project = @client.projects.find(params[:id])
  end


end
