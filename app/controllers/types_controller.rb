class TypesController < ApplicationController
  def index
  	@types = Type.order(:type_name).page params[:page]
  end
end
