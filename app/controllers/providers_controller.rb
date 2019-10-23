class ProvidersController < ApplicationController
	def index
		if params[:search]
			@providers  = Provider.where("provider_name LIKE ?", "%#{params[:search]}%").page params[:page]
		else
			@providers = Provider.order(:provider_name).page params[:page]
		end
	end
end