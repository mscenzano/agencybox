class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end
  
  def create
    @client = Client.create(client_params)
      if @client
      message = Slack::Message.new("#{current_user.name.split(" ")[0]} just created a new client! Go and check it out!" )
      $poster.send_message(message)
      else
        render "error"
       end
        redirect_to client_path(@client)
  end

  def show
    @client = Client.find(params[:id])
    @projects = @client.projects
  end
  
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end

  private

    def client_params
      params.require(:client).permit(:name, :phone, :email, :contact_name)
    end
  
end

