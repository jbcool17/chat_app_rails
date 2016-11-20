class ChatController < ApplicationController

  def index
    @channels = Channel.all
    @users = User.all
  end

  def enter_chat
    redirect_to chat_path(params[:channels], params[:users])
  end

  def chat
    @channel = Channel.find(params[:channel])
    @user = User.find(params[:user])
    @messages = @channel.messages.sort_by &:date

    @message = Message.new

  end
end
