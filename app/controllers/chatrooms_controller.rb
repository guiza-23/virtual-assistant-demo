class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatrooms.all
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.company_id = current_user.company.id
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    end
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
