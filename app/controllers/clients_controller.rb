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
  
  def edit
    @client = Client.find(params[:id])
    render 'edit'
  end

  def update
      @client = Client.find(params[:id])
      respond_to do |format|
        if @client.update(client_params)
          format.html { redirect_to @client, notice: 'Task was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
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

