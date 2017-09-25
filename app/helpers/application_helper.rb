module ApplicationHelper
	
	def all_doctors
		@doctors = Doctor.all
	end

	def all_appointments
		@appointments = Appointment.all
	end

	def total_number_of_users
		return User.count
	end

	def all_users
		@users = User.all
	end

	def all_time_slots
		@time_slots= TimeSlot.all
	end


end
