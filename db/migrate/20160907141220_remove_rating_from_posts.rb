class RemoveRatingFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :rating, :integer
  end
end
