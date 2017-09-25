class Doctor < ApplicationRecord

	belongs_to :specialty
	belongs_to :practice
	has_many :time_slots
	has_many :appointments, through: :time_slots
	has_many :users, through: :appointments

	validates :first_name, presence: true
	validates :last_name, presence:true

	def full_name
		"#{self.first_name}  " "#{self.last_name}"
	end


end