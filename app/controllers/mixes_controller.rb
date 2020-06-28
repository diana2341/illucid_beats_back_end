class MixesController < ApplicationController

  def index
    mix = Mix.all
    render json: mix
  end

  def show
    mix = Mix.find(params[:id])
    render json: mix
  end

  def create
    mix = Mix.new(mix_params)
    if mix.save
      render json: mix
    else
      render error: {error: "Unable to save Mix."}, status:400
    end
  end

  def destroy
    mix = Mix.find(params[:id])
    if mix
      mix.destroy
      render json: {message: "Mix successfully deleted"}, status: 200
    else
      render json: {error: "Unable to delete Mix"}, status: 400
    end
  end


  private

  def mix_params
    params.require(:mix).permit(:mix_name, :user_id, :light_rain_volume, :heavy_rain_volume, :large_fire_volume, :campfire_volume, :forest_volume, :river_volume, :strong_wind_volume, :light_wind_volume, :thunder_volume, :wave_volume, :coffee_shop_volume, :bird_volume,:night_sound_volume,:wind_chime_volume,:cat_purring_volume)
  end
end
# 

