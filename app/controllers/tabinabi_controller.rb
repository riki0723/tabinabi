class TabinabiController < ApplicationController

  def index
    @spots = Spot.all
    @tag_list = Tag.all
    # @tag = Tag.find(params[:tag_id])
  end
end
