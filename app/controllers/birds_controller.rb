class BirdsController < ApplicationController
 	def index
		if params[:search]
		@birds = Bird.where('common_name LIKE ?', "%#{params[:search]}%").page params[:page]
  else
		@birds = Bird.order(:common_name).page params[:page]
	end
end

  def show
  	@bird = Bird.find(params[:id])
  end

def birds_params
  params.permit(:search)
end

end
