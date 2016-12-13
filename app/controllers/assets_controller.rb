class AssetsController < ApplicationController
  
  before_action :find_project, except: :index
  before_action :project_assets, only: [:show, :destroy]

  def index
    @assets = Asset.all
  end

  def new
    @asset = @project.assets.new
    @client = @project.client
    @assets = @project.assets
  end 

  def create
    @asset = @project.assets.new(asset_params)
    @asset.user = current_user
    @asset.save
    unless @asset
      render 'error'
    end
    redirect_to assets_path
  end

  def show
  end

  def destroy
    @asset = @project.assets.find(params[:id])
    @asset.destroy
    redirect_to project_assets_path
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def asset_params
    params.require(:asset).permit(:image, :name, :file_type, :description, :pdf)
  end

  def project_assets
    @asset = @project.assets.find_by(id: params[:id])
  end

end
