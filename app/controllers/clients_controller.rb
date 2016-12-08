class ClientsController < ApplicationController

  def list
    @clients = Client.all
  end

  def index 
    @client = Client.find_by(:id)
    @projects = @client.projects
    render 'index'
  end

  def new
    @client = Client.new
    render 'new'
  end
  
  def create
    @client = Client.create(client_params)
      unless @client
    render "error"
      else
        redirect_to
      end
    end
  end

  def show
    @client = Client.find(params[:id])
    render 'show'
  end
  
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
  end

  private

    def client_params
      params.require(:client).permit(:name, :phone, :mail, :contact_name)
    end
  
end

