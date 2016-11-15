Message.destroy_all
User.destroy_all
Channel.destroy_all

status_user = User.create(name: 'STATUS', color: '#D3D3D3')

10.times do 
	user1 = User.create name: Faker::Name.first_name
	user2 = User.create name: Faker::Name.first_name
	user3 = User.create name: Faker::Name.first_name
	

	channel = Channel.create name: Faker::Team.name

	Message.create message: "#{user1.name} HAS JOINED THE CHANNEL.", user_id: status_user.id, channel_id: channel.id
	Message.create message: "#{user2.name} HAS JOINED THE CHANNEL.", user_id: status_user.id, channel_id: channel.id
	Message.create message: "#{user3.name} HAS JOINED THE CHANNEL.", user_id: status_user.id, channel_id: channel.id

	Message.create message: Faker::Hipster.sentence, user_id: user1.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user2.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user1.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user3.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user3.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user2.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user1.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user2.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user3.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user1.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user2.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user3.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user1.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user1.id, channel_id: channel.id
	Message.create message: Faker::Hipster.sentence, user_id: user1.id, channel_id: channel.id
end
puts "========================="
puts "Database has been seeded."
puts "========================="
