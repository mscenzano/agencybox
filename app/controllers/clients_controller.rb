class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end
  
  def create
    @client = Client.create(client_params)
      unless @client
        render "error"
      else
        redirect_to
      end
  end

  def show
    @client = Client.find(params[:id])
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

