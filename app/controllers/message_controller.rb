class MessageController < ApplicationController
  before_action :current_user

  def create
    message = current_user.messages.new(message_params)
    if message.save
      ActionCable.server.broadcast "chatroom_channel",
                                  body: new_message(message)
    end
  end


  private

  def message_params
    params.require(:message).permit(:message)
  end

  private
  def new_message(message)
    render partial: 'messages/message', locals:{message: message}
  end
end
