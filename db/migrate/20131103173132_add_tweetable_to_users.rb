class AddTweetableToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tweetable, :text
  end
end
