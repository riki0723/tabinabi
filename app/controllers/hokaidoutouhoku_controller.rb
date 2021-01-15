class HokaidoutouhokuController < ApplicationController
  def index
    @spots = Spot.where(area_id:2..8).page(params[:page]).per(10).order("created_at DESC")
    @tag_list = Tag.all
    

    # @hokuriku = Spot.where(area_id:16..22)
    # @toukai = Spot.where(area_id:23..24)
    # @kinki = Spot.where(area_id:25..31)
    # @chuugoku = Spot.where(area_id:32..36)
    # @asikoku = Spot.where(area_id:37..40)
    # @kyuusyuuokinawa = Spot.where(area_id:41..48)
  end
end
