class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @spots = current_user.spots.all
    @tag_list = Tag.all
  end

end
