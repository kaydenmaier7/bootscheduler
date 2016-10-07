class Boot < ApplicationRecord
	has_and_belongs_to_many :topics
	has_many :mentor_appointments, class_name: 'Appointment', foreign_key: :mentor_id
	has_many :student_appointments, class_name: 'Appointment', foreign_key: :student_id
	has_many :feedbacks

	has_secure_password

	validates :first_name, :last_name, :email, :password_digest, :phone, :role, presence: true
	validates :email, :phone, uniqueness: true

	validates_format_of :email, :with =>  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, :on => :create
	validates_format_of :phone, :with => /\d{10}/x, :on => :create
	
end

