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


times = ['8:00', '8:30', '9:00', '9:30', '10:00', '10:30', '11:00', '11:30', '12:00', '12:30', '1:00', '1:30', '2:00', '2:30', '3:00', '3:30', '4:00', '4:30', '5:00']



dates = ['2016-10-03', '2016-10-04', '2016-10-05', '2016-10-06', '2016-10-07', '2016-10-08', '2016-10-09']



10.times do
	Appointment.create(
		time: Faker::Time.between(DateTime.now, DateTime.now + 6),
		date: dates.sample,
		location: Faker::Address.street_address,
		mentor_id: rand(1..15),
		topic_id: rand(1..5),
		student_id: rand(16..30)
		)
end

25.times do
    Appointment.create(
        time: Faker::Time.between(DateTime.now, DateTime.now + 6),
        date: dates.sample,
        location: Faker::Address.street_address,
        mentor_id: rand(1..15),
        topic_id: rand(1..5),
        student_id: nil
        )
end


100.times do
  Feedback.create(
    boot_id: rand(1..30),
    rating: rand(1..5),
    comment: Faker::Hacker.say_something_smart,
    ask: [true, true, true, false].sample

    )
end
