class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.references :post, foreign_key: true
      t.integer :user

      t.timestamps
    end
  end
end
