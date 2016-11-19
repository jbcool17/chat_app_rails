class Channel < ApplicationRecord
	has_many :messages, dependent: :destroy
  has_many :users, through: :messages

	def self.users(channel)
		Channel.find_by(name: channel).messages.collect { |m| m.user.name }.uniq
	end
end
