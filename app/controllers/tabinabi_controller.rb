class TabinabiController < ApplicationController

  def index
    @spots = Spot.all.page(params[:page]).per(10)
    @tag_list = Tag.all
    # @tag = Tag.find(params[:tag_id])
  end
end
