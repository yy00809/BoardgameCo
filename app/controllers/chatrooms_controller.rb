class ChatroomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chatrooms = Chatroom.all
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = current_user.chatrooms.build(chatroom_params)

    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render :new
    end
  end

  def show
    @chatroom = Chatroom.find_by(slug: params[:slug])
    puts "Slug: #{params[:id]}"
    raise "Chatroom not found" if @chatroom.nil?
    @message = Message.new
    @messages = @chatroom.messages.where(chatroom_id: @chatroom.id).includes(:user)
  end
  

  def destroy
    @chatroom = Chatroom.find_by(slug: params[:id])
    @chatroom.destroy

    redirect_to chatrooms_path
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
