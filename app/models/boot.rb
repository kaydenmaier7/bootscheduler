class Boot < ApplicationRecord
	has_and_belongs_to_many :topics
	has_many :mentor_appointments, class_name: 'Appointment', foreign_key: :mentor_id
	has_many :student_appointments, class_name: 'Appointment', foreign_key: :student_id
	has_many :feedbacks
	
end
