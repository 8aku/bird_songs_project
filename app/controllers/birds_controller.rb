class BirdsController < ApplicationController
  def index
  	@birds = Bird.order(:common_name).page params[:page]
  end

  def show
  	@bird = Bird.find(params[:id])
  end
end
