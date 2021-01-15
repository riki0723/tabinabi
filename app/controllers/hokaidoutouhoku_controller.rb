class HokaidoutouhokuController < ApplicationController
  def index
    @spots = Spot.where(area_id:2..8).page(params[:page]).per(10).order("created_at DESC")
    @tag_list = Tag.all
    
    
    # @kyuusyuuokinawa = Spot.where(area_id:41..48)
  end
end
