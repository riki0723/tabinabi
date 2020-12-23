class SpotsController < ApplicationController
  def new
    @spot = Spot.new
  end

  def create
    Spot.create(spot_params)
  end

  def show
    @spot = Spot.find(params[:id])
  end

  private
  def spot_params
    params.require(:spot).permit(:name, :text, :image).merge(user_id: current_user.id)
  end

end
