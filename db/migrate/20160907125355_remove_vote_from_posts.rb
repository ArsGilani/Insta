class RemoveVoteFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :vote, :integer
  end
end
