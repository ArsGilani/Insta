class AddVoteToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :vote, :integer
  end
end
