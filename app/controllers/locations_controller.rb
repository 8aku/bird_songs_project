class LocationsController < ApplicationController
	def index
		if params[:search]
			@locations  = Location.joins(:country).where("latitude LIKE ? OR longitude LIKE ? OR country LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%").page params[:page]
		else
			@locations = Location.all.page params[:page]
		end
	end

	def show
		@location = Location.find(params[:id])
	end
end
