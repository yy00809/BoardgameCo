# app/channels/chatroom_channel.rb
class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroom_channel_#{params[:slug]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message(data)
    message = current_user.messages.build(body: data['message'], chatroom_id: data['chatroom_id'])
    message.save
  end
end
  