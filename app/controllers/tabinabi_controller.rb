class TabinabiController < ApplicationController

  def index
    @spots = Spot.all.page(params[:page]).per(10).order("created_at DESC")
    @tag_list = Tag.all
  end
end
