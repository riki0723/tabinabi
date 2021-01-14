class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @spots = current_user.spots.all.page(params[:page]).per(10).order("created_at DESC")
    @tag_list = Tag.all
  end

end
