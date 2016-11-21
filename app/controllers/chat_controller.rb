class ChatController < ApplicationController
  before_action :setup_chat, only: [:chat, :enter_chat]

  def index
    @channels = Channel.all
    @users = User.all
  end

  def enter_chat
    Message.create message: "#{@user.name} HAS ENTERED THE CHANNEL!",
                    user_id: User.first.id,
                    channel_id: @channel.id

    redirect_to chat_path(@channel, @user)
  end

  def chat
    @channel = Channel.find(params[:channel])
    @user = User.find(params[:user])
    @messages = @channel.messages.sort_by &:date

    @message = Message.new

  end

  private

  def setup_chat
    @channel = Channel.find(params[:channel])
    @user = User.find(params[:user])
    @messages = @channel.messages.sort_by &:date
  end


end
