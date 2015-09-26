class TweetsController < ApplicationController
  before_action :authenticate_user!, only:[:entry, :new]
  def index
    @tweets = Tweet.page(params[:page]).per(10).order('created_at DESC')
  end

  def new
    @tweet = Tweet.new
    @str   = ["ストリート系","可愛い系"]
  end

  def create
    Tweet.create(image: create_params[:image],style: create_params[:style], user_id: current_user.id)
    redirect_to :action => "index"
  end

  def entry
    @tweet = Tweet.find(params[:id])
  end

  def post
    Review.create(review: post_params[:review], tweet_id: post_params[:tweet_id] , user_id: current_user.id)
    redirect_to :action => "index"
  end


  private
  def create_params
    params.require(:tweet).permit(:image,:style)
  end

  def post_params
    params.permit(:review,:tweet_id,)
  end
end
