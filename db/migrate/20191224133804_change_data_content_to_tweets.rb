class ChangeDataContentToTweets < ActiveRecord::Migration[5.0]
  def change
    change_column :tweets, :content, :string
  end
end
