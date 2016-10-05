class Appointment < ApplicationRecord
	belongs_to :mentor, class_name: 'User'
	belongs_to :topic
	belongs_to :student, class_name: 'User'

end
