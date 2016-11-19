class ChatController < ApplicationController
  def show
    @channel = Channel.find(params[:channel])
    @user = User.find(params[:user])
    @messages = @channel.messages.sort_by &:date

    @message = Message.new

  end
end
