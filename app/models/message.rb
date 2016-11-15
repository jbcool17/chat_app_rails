class Message < ApplicationRecord
	belongs_to :user
  	belongs_to :channel

  	before_create :set_time


  	private

  	def set_time
  		self.date = Time.now
  	end
end
