class TabinabiController < ApplicationController

  def index
    @spots = Spot.all
  end
end
