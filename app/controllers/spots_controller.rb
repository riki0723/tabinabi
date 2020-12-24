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

  def edit
    @spot = Spot.find(params[:id])
  end

  def update
    spot = Spot.find(params[:id])
    spot.update(spot_params)
  end

  def destroy
    spot = Spot.find(params[:id])
    spot.destroy
    redirect_to root_path
  end

  private
  def spot_params
    params.require(:spot).permit(:name, :text, :image).merge(user_id: current_user.id)
  end

end
