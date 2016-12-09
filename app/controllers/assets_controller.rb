class AssetsController < ApplicationController
  
  before_filter :find_project, except: :index
  before_filter :project_assets, only: :show, :destroy

  def index
    @assets = Asset.all
  end

  def new
    @asset = @project.assets.new
  end 

  def create
    @asset = @project.assets.create(asset_params)
    unless @asset
      render 'error'
    else
      redirect_to 'show'
    end
  end

  def show
  end

  def destroy
    @asset.destroy
  end

private

  def find_project
    @project = Project.find_by(:id params[:id])
  end

  def asset_params
    params.require(:asset).permit(:name, :description, :type)
  end

  def project_assets
    @asset = @project.assets.find_by(:id params[:id])
  end

end
