class BirdsController < ApplicationController
	def index
		if params[:search]
			@birds = Bird.where("common_name LIKE ? OR genus LIKE ? OR species LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%").page params[:page]
		else
			@birds = Bird.order(:common_name).page params[:page]
		end
	end

	def show
		@bird = Bird.find(params[:id])
	end
end
