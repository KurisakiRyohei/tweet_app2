class UsersController < ApplicationController
  def show
  	@username = current_user.username
  	@tweets = current_user.tweets.page(params[:page]).per(5).order("created_at desc")
  end
end
