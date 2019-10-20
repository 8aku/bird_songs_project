class CountriesController < ApplicationController
	def index
		if params[:search]
			@countries  = Country.where("country LIKE ?", "%#{params[:search]}%").page params[:page]
		else
			@countries = Country.order(:country).page params[:page]
		end
	end

	def show
		@country = Country.find(params[:id])
	end
end
