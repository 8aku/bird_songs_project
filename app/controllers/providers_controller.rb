class ProvidersController < ApplicationController
  def index
  	@providers = Provider.order(:provider_name).page params[:page]
  end
end
