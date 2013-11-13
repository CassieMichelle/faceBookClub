
User.delete_all

puts 'Want a bunch o users?'

1000.times{
	User.create(first_name: Faker::Name.first_name.downcase, last_name: Faker::Name.last_name.downcase, email: Faker::Internet.email.downcase, screen_name: Faker::Internet.user_name.downcase, password:'password')
}

puts 'You got em'

User.create(first_name: 'bogart', last_name: 'walther', email: 'woof@woof.woof', screen_name: 'bodiggity', password:'passwoof')

puts 'and woof'