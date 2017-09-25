class PracticesController < ApplicationController

	def index
		@practices = Practice.all
	end

	def new 

	end

	def create
		practice = Practice.new
		practice.name = params["name"]
		practice.location = params["location"]
		practice.save
		redirect_to "/practices"
	end
end