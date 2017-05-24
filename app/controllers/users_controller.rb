class UsersController < ApplicationController
  def show
  	binding.pry
  	@username = current_user.username
  	@tweets = Tweet.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at desc")
  end
end
