class User < ApplicationRecord
	has_many :messages

	before_create :get_color

	def self.colors
		User.all.collect { |u| u.color }
	end

	private

	def get_color
      color = '#%06x' % (rand * 0xffffff)
      min_color_num = color.scan(/\d/).map(&:to_i).min

      while ( User.colors.include?(color) ||  min_color_num < 4 ) do
        color = '#%06x' % (rand * 0xffffff)
        min_color_num = color.scan(/\d/).map(&:to_i).min
        puts min_color_num
      end

      self.color = color
    end
end
