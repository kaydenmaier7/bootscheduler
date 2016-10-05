class Appointment < ApplicationRecord
	belongs_to :mentor, class_name: 'Boot'
	belongs_to :topic
	belongs_to :student, class_name: 'Boot'

end
