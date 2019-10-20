class BirdsongsController < ApplicationController
  def index
  if params[:search]
  	if (params[:category] == "bird")
  	@birdsongs = BirdSong.joins(:bird).where("common_name LIKE ? OR genus LIKE ? OR species LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%").page params[:page]
  end
   if (params[:category] == "country")
  	@birdsongs = BirdSong.joins(:country).where("country LIKE ?", "%#{params[:search]}%").page params[:page]
  end
   if (params[:category] == "type")
  	@birdsongs = BirdSong.joins(:type).where("type_name LIKE ?", "%#{params[:search]}%").page params[:page]
  end
  if (params[:category] == "provider")
  	@birdsongs = BirdSong.joins(:provider).where("provider_name LIKE ?", "%#{params[:search]}%").page params[:page]
  end
  if (params[:category] == "license")
  	@birdsongs = BirdSong.joins(:lisence).where("license_url LIKE ?", "%#{params[:search]}%").page params[:page]
  end
  if (params[:category] == "location")
  	@birdsongs = BirdSong.joins(:location).where("latitude LIKE ? OR longitude LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").page params[:page]
  end
  else
  	@birdsongs = BirdSong.order(:audio_file).page params[:page]
  end
end
  def show
  	@birdsong = BirdSong.find(params[:id])
  end
end