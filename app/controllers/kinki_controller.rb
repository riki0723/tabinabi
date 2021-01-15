class KinkiController < ApplicationController
  def index
    @spots = Spot.where(area_id:25..31).page(params[:page]).per(10).order("created_at DESC")
    @tag_list = Tag.all
  end
end
