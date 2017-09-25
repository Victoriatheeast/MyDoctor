class TimeSlotsController < ApplicationController

	def index

	end
	
	def new

	end

	def create
		time_slot = TimeSlot.new
		time_slot.doctor_id = params["doctor_id"]["id"]
		time_slot.date = time_slot.date = params["start_time"].split()[0]
		time_slot.start_time = DateTime.strptime(params["start_time"],"%Y-%m-%d %H:%M")
		time_slot.end_time = DateTime.strptime(params["end_time"],"%Y-%m-%d %H:%M")
		time_slot.duration = params["duration"]
		time_slot.is_filled = false
		time_slot.save
		redirect_to "/doctors/#{time_slot.doctor_id}"
	end

	def edit
		@time_slot = TimeSlot.find_by(id: params["id"])
	end

	def update
		time_slot = TimeSlot.find_by(id:params["id"])
		time_slot.date = params["start_time"].split()[0]
		time_slot.start_time = DateTime.strptime(params["start_time"],"%Y-%m-%d %H:%M")
		time_slot.end_time = DateTime.strptime(params["end_time"],"%Y-%m-%d %H:%M")
		time_slot.duration = params["duration"]
		time_slot.is_filled = false
		time_slot.save
		redirect_to "/doctors/#{time_slot.doctor_id}"
	end

	def destroy
		time_slot = TimeSlot.find_by(id: params["id"])
		doctor_id = time_slot.doctor_id
		time_slot.delete
		redirect_to "/doctors/#{time_slot.doctor_id}"
	end

end