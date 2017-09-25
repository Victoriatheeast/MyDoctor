class AppointmentsController < ApplicationController

	def index
		if session["user_id"].blank?
			redirect_to "/", notice: "Please sign in"
		else
			if User.find_by(id: session["user_id"]).admin == 'f'
				@appointments = User.find_by(id: session["user_id"]).appointments.order('updated_at desc')
		    else 
		    	@appointments = Appointment.all.order('updated_at desc')
		    end
		end
	end

	def new

	end

	def show
		@appointment = Appointment.find_by(id: params["id"])
	end

	def edit
		@appointment = Appointment.find_by(id: params["id"])
	end

	def update
		appointment = Appointment.find_by(id: params["id"])
		appointment.review = params["review"]
		if appointment.review.blank?
			appointment.is_reviewed = false
		else
			appointment.is_reviewed = true
		end
		appointment.is_completed = true
		appointment.save
		redirect_to "/appointments/#{appointment.id}"
	end


	def create
		appointment = Appointment.new
		appointment.time_slot_id = params["time_slot_id"]
		appointment.user_id = session["user_id"]
		appointment.is_reviewed = false
		appointment.is_completed = false
		appointment.save
		TimeSlot.find_by(id: params["time_slot_id"]).is_filled = true
		redirect_to "/appointments"
	end

	def destroy
		appointment = Appointment.find_by(id: params["id"])
		TimeSlot.find_by(id: appointment.time_slot_id).is_filled = false
		appointment.delete
		redirect_to "/appointments"
	end

end