class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find_by(id: params["id"])
		if @user == nil || @user.id != session["user_id"] 
			redirect_to "/"
		end
		@appointments = @user.appointments
		@appointments.each do |appointment|
		if appointment.is_completed == 't' && appointment.is_reviewed == 't'
			@user.points += 20
		elsif appointment.is_completed == 't' && appointment.is_reviewed == 'f'
			@user.points += 10
		end	
	end
	end

	def create
		@user = User.new
		@user.name = params["name"]
		@user.email_address = params["email_address"]
		@user.password = params["password"]
		@user.admin = false
		@user.points = 0
		if@user.save
			redirect_to "/", notice: "Thanks for signing up!"
		else
			render 'signup'
		end
	end

	def edit
		@user = User.find_by(id: params["id"])
	end

	def update
		user = User.find_by(id: params["id"])
		user.name = params["name"]
		user.email_address = params["email_address"]
		user.password = params["password"]
		if user.admin == 'f'
			user.admin = false
		else 
			user.admin = true
		end
		user.save
		redirect_to "/"
	end

end
