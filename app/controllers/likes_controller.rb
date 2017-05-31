class LikesController < ApplicationController
	before_action :authenticate_user!

	def like 
		@tweet = Tweet.find(params[:tweet_id])
		@like = current_user.likes.create(tweet: @tweet)
	end
	def unlike
		@like = current_user.likes.find_by!(tweet_id: params[:tweet_id])
		@like.destroy
	end
end
