class AddLikeToMarks < ActiveRecord::Migration[5.0]
  def change
    add_column :marks, :like, :boolean
  end
end
