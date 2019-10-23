class LicensesController < ApplicationController
	def index
		if params[:search]
			@licenses  = License.where("license_url LIKE ?", "%#{params[:search]}%").page params[:page]
		else
			@licenses = License.order(:license_url).page params[:page]
		end
	end
end
