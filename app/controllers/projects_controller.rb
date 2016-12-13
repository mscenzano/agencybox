class ProjectsController < ApplicationController

  before_action :find_client, except: :index
  before_action :client_project_find, only: [:show, :destroy]


  def index
    @projects = Project.all
  end

  def new
    @client = Client.first if @client.nil?
    @project = Project.new
    @clients = Client.all
  end

  def create
    @project = Project.create(project_params)
    unless @project
      render 'error'
    end
      redirect_to project_path(@project)
  end

  def show
    @asset = @project.assets.new
    @assets = @project.assets.all
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def find_client
    @client = Client.find_by(id: params[:client_id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :client_id)
  end

  def client_project_find
    @project = Project.find(params[:id])
  end


end
