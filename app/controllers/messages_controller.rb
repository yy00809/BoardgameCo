# app/controllers/messages_controller.rb
class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @chatroom = Chatroom.find_by(slug: params[:chatroom_id])
    @message = current_user.messages.build(message_params)
    @message.chatroom = @chatroom
  
    if @message.save
      ActionCable.server.broadcast "chatroom_channel_#{params[:chatroom_id]}", {
        message: @message.body,
        username: @message.user.username
      }
  
      respond_to do |format|
        format.html { redirect_to @chatroom }
        format.js # Renders create.js.erb
      end
    else
      puts "@chatroom value: #{@chatroom}"
      redirect_to chatroom_path(@chatroom)
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
  