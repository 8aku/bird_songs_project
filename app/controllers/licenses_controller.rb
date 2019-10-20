class LicensesController < ApplicationController
  def index
  	@licenses = License.order(:license_url).page params[:page]
  end
end
