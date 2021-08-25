class CreateJoinRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :join_requests do |t|
      t.string :skill_level
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
