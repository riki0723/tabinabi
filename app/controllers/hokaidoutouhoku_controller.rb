class HokaidoutouhokuController < ApplicationController
  def index
    @spots = Spot.where(area_id:2..8).page(params[:page]).per(10).order("created_at DESC")
    @tag_list = Tag.all
    

    
    
    # @chuugoku = Spot.where(area_id:32..36)
    # @asikoku = Spot.where(area_id:37..40)
    # @kyuusyuuokinawa = Spot.where(area_id:41..48)
  end
end
