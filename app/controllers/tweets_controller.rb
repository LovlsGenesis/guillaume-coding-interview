class TweetsController < ApplicationController
  def index
    if params[:user_id].present?
      return render json: Tweet.by_user_id(params[:user_id])
    end

    render json: Tweet.all
  end
end
