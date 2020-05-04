class Api::V1::SavedMashUpsController < ApplicationController

  def index
    saved_mash_up = SavedMashUp.all
    render json: saved_mash_up
  end

  def show
    saved_mash_up = SavedMashUp.find(params[:id])
    render json: saved_mash_up
  end

  def create
    saved_mash_up = SavedMashUp.new(saved_mash_up_params)
      if saved_mash_up.save
        render json: saved_mash_up
      else
        render error: {error: ‘Unable to save Mix.’}, status:400
      end
  end

  def update
    saved_mash_up = SavedMashUp.find(params[:id])
      if saved_mash_up
        saved_mash_up.update(saved_mash_up_params)
        render json: {message: ‘Mix successfully updated’}, status: 200
      else
        render json: {error: ‘Unable to update Mix’}, status:400
      end
  end

  def destroy
    saved_mash_up = SavedMashUp.find(params[:id])
    if saved_mash_up
      saved_mash_up.destroy
      render json: {message: ‘Mix successfully deleted’}, status: 200
    else
      render json: {error: ‘Unable to delete Mix}, status: 400
    end
  end

  private

  def saved_mash_up_params
    params.require(:saved_mash_up).permit(:mix_name, :user_id)
  end
end
