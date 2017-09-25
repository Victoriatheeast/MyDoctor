class DoctorsController < ApplicationController

	def index
		@doctors = Doctor.all

	end

	def show
		@doctor = Doctor.find_by(id: params["id"])
	end

	def new

	end

	def create
		doctor = Doctor.new
		doctor.first_name = params["first_name"]
		doctor.last_name = params["last_name"]
		doctor.specialty_id = params["specialty_id"]["id"]
		doctor.practice_id = params["practice_id"]["id"]
		doctor.professional_statement = params["professional_statement"]
		doctor.profile_img_url = params["profile_img_url"]
		doctor.save
		redirect_to "/doctors"
	end

	def edit
		@doctor = Doctor.find_by(id: params["id"])
	end

	def update
		doctor = Doctor.find_by(id: params["id"])
		doctor.first_name = params["first_name"]
		doctor.last_name = params["last_name"]
		doctor.specialty_id = params["specialty_id"]["id"]
		doctor.practice_id = params["practice_id"]["id"]
		doctor.professional_statement = params["professional_statement"]
		doctor.profile_img_url = params["profile_img_url"]
		doctor.save
		redirect_to "/doctors/#{doctor.id}"

	end

	# Destroy all its time slots
	def destroy
		doctor = Doctor.find_by(id: params["id"])
		doctor.time_slots.each do |time_slot|
			time_slot.delete
            if time_slot.appointment.present?
            time_slot.appointment.delete
            end
		end
		doctor.delete
		redirect_to "/"
	end

end
