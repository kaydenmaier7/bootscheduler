require 'faker'

# clear out database

15.times do
  Boot.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'bs',
    phone: Faker::PhoneNumber.cell_phone,
    role: 'mentor'
    )
end

15.times do
  Boot.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'bs',
    phone: Faker::PhoneNumber.cell_phone,
    role: 'student'
    )
end

topic1 = {
	name: 'JavaScript'
}

topic2 = {
	name: 'Sinatra'
}

topic3 = {
	name: 'ActiveRecord'
}

topic4 = {
	name: 'Rails'
}

topic5 = {
	name: 'Ruby'
}

Topic.create(topic1)
Topic.create(topic2)
Topic.create(topic3)
Topic.create(topic4)
Topic.create(topic5)

100.times do
	Appointment.create(
		time: '07:00:00',
		date: '2016-11-01',
		location: Faker::Address.street_address,
		mentor_id: rand(1..15),
		topic_id: rand(1..5),
		student_id: rand(16..30)
		)
end


100.times do
  Feedback.create(
    boot_id: rand(1..30),
    rating: rand(1..5),
    comment: Faker::Hacker.say_something_smart,
    ask?: [true, true, true, false].sample

    )
end
