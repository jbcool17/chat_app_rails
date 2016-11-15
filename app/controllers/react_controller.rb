class ReactController < ApplicationController
  def index
	  @users = User.all
	  @channels = Channel.all
	  @messages = Message.all
  end
  
  def users
  	@users = User.all
  	render component: 'User', props: { data: @users }
  end

  def channels
  	@channels = Channel.all
  	render component: 'Channel', props: { data: @channels }
  end

  def messages
  	@messages = Message.all
  	render component: 'Message', props: { data: @messages }
  end
end
