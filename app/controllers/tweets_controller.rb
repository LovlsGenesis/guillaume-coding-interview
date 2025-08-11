class TweetsController < ApplicationController
  def index
    if params[:user_id].present?
      return render json: Tweet.by_user_id(params[:user_id])
    end

    page = (params[:page] || 1).to_i
    per_page = (params[:per_page] || 5).to_i

    render json: Tweet.order(:created_at).limit(per_page).offset((page - 1) * per_page)
  end
end
