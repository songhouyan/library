class UsersController < ApplicationController
  
  def show
    @user = User.find_by_username(params[:username])
  end

  def followers
    @followers = User.find_by_username(params[:username]).followers.all
  end

  def following
    @following = User.find_by_username(params[:username]).following.all
  end

end
