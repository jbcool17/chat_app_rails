class Channel < ApplicationRecord
	has_many :messages

	def self.users(channel)
		Channel.find_by(name: channel).messages.collect { |m| m.user.name }.uniq
	end
end
