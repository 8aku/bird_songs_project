class BirdsongsController < ApplicationController
  def index
  	@birdsongs = BirdSong.order(:audio_file).page params[:page]
  end

  def show
  	@birdsong = BirdSong.find(params[:id])
  end
end
