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
      redirect_to project_asset_path(@project,@asset)
  end

  def show
  end

  def destroy
    @asset.destroy
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def asset_params
    params.require(:asset).permit(:image, :name, :file_type, :description)
  end

  def project_assets
    @asset = @project.assets.find_by(id: params[:id])
  end

end
