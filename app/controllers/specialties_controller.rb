class SpecialtiesController < ApplicationController

	def index
		@specialties = Specialty.all
	end

	def new

	end

	def create
		specialty = Specialty.new
		specialty.name = params["name"]
		specialty.save
		redirect_to "/specialties"

	end
end