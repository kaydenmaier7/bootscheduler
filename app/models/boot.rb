class Boot < ApplicationRecord
	has_and_belongs_to_many :topics
	has_many :appointments
	has_many :feedbacks
	
end
