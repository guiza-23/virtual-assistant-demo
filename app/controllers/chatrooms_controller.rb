class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatrooms.all
  end

  def new
    @assistant = Assistant.find(params[:assistant_id])
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.company_id = current_user.company.id
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @mensaje = Mensaje.new
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:assistant_id, :name)
  end
end
