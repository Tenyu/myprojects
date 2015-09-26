class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :style
      t.integer :user_id
      t.integer :review_id
      t.timestamps 
    end
  end
end
