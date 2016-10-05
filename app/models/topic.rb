class Topic < ApplicationRecord
	has_and_belongs_to_many :boots
	has_many :appointments
end
