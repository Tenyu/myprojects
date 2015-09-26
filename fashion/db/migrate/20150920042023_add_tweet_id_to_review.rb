class AddTweetIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :tweet_id, :integer
  end
end
