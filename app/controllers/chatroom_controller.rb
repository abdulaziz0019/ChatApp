class ChatroomController < ApplicationController

  def index
    if !logged_in
      redirect_to login_path
    end
    @message = Message.new
    @messages = Message.all
  end

  def new
end





end
