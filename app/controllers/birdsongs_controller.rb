class BirdsongsController < ApplicationController
  def index
  	@birdsongs = BirdSong.all
  end

  def show
  	@birdsong = BirdSong.find(params[:id])
  end
end
