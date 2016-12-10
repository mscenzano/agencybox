class ProjectsController < ApplicationController

  before_action :find_client, except: :index
  before_action :client_project_find, only: [:show, :destroy]


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
    end
      redirect_to 'show'
  end

  def show
  end

  def destroy
    @project.destroy
  end

  private

  def find_client
    @client = Client.find_by(id: params[:client_id])
  end

  def project_params
    params.require(:project).permit(:name, :description)
  end

  def client_project_find
    @project = Project.find(params[:id])
  end


end
