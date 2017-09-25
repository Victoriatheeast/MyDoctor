class User < ApplicationRecord

	has_secure_password

	has_many :appointments
	has_many :doctors, through: :time_slots

	validates :name, presence: true
	validates :password, presence:true
	validates :admin, inclusion: { in: [true, false]}

end
