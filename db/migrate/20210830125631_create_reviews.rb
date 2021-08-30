class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :score
      t.references :event, null: false, foreign_key: true
      t.references :reviewer, foreign_key: { to_table: :users }
      t.references :reviewee, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
