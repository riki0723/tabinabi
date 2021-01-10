class SpotsController < ApplicationController
  def new
    @spot = SpotsTag.new
  end

  def create
    @spot = SpotsTag.new(spot_tag_params)
    if @spot.valid?
      @spot.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @messages = @spot.messages.includes(:user)
    @message = Message.new

  end

  def edit
    @spot = Spot.find(params[:id])

  end

  def update
    @spot = Spot.find(params[:id])
    @spot.update(spot_params)
    if @spot.valid?
      @spot.save
      return redirect_to spot_path
    else
      render "edit"
    end
  end

  def destroy
    spot = Spot.find(params[:id])
    spot.destroy
    redirect_to root_path
  end

  def search
    return nil if params[:keyword] == ""
    tag = Tag.where(['name LIKE ?', "%#{params[:keyword]}%"] )
    render json:{ keyword: tag }
  end

  private
  def spot_tag_params
    params.require(:spots_tag).permit(:title, :text, :image, :area_id, :name).merge(user_id: current_user.id)
  end

  def spot_params
    params.require(:spot).permit(:title, :text, :image, :area_id).merge(user_id: current_user.id)
  end

end
