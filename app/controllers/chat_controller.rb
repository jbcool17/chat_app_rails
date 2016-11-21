class ChatController < ApplicationController
  before_action :set_user, only: [:user_sign_in, :user_home]
  before_action :setup_channel, only: [:channel_sign_in, :channel]

# User Can Sign In
  def index
    @users = User.all
  end

# Signs in
  def user_sign_in
    session[:current_user] = @user.id

    redirect_to user_home_path(@user)
  end

# Enters Channel Selection
  def user_home
    @channels = Channel.all
  end

# Signs in to channel
  def channel_sign_in
    Message.create message: "#{@user.name} HAS ENTERED THE CHANNEL!",
                    user_id: User.first.id,
                    channel_id: @channel.id

    redirect_to channel_path(@channel, @user)
  end

# Enters Channel
  def channel
    @channels = Channel.all
    @message = Message.new
  end

  private

  def set_user
    @user = User.find(params[:user])
  end

  def setup_channel
    @channel = Channel.find(params[:channel])
    @user = User.find(session[:current_user])
    @messages = @channel.messages.sort_by &:date
  end


end
