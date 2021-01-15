class ShikokuController < ApplicationController
  def index
    @spots = Spot.where(area_id:37..40).page(params[:page]).per(10).order("created_at DESC")
    @tag_list = Tag.all
  end
end
