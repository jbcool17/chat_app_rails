class ChatController < ApplicationController

  def index
    @channels = Channel.all
    @users = User.all
  end

  def enter_chat
    channel = Channel.find params[:channels]
    user = User.find params[:users]

    Message.create message: "#{user.name} HAS ENTERED THE CHANNEL!",
                    user_id: User.first.id,
                    channel_id: channel.id

    redirect_to chat_path(params[:channels], params[:users])
  end

  def chat
    @channel = Channel.find(params[:channel])
    @user = User.find(params[:user])
    @messages = @channel.messages.sort_by &:date

    @message = Message.new

  end
end
