class TypesController < ApplicationController
  def index
 		 if params[:search]
 			@types  = Type.where("type_name LIKE ?", "%#{params[:search]}%").page params[:page]
 		else
  			@types = Type.order(:type_name).page params[:page]
  		end
  end
end
