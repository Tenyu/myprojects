class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    if current_user.id == user.id
      @nickname = current_user.nickname
      @tweets = current_user.tweets.page(params[:page]).per(5).order('created_at DESC')
    else
     @nickname = User.find(params[:id]).nickname
     @tweets = User.find(params[:id]).tweets.page(params[:page]).per(5).order('created_at DESC')
   end
 end
end
