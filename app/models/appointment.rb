class Appointment < ApplicationRecord

	belongs_to :time_slot
	belongs_to :doctor
	belongs_to :user

	validates :time_slot_id, presence: true
	validates :user_id, presence: true
	validates :is_completed, inclusion: { in: [true, false]}
	validates :is_reviewed, inclusion: { in: [true, false]}

end