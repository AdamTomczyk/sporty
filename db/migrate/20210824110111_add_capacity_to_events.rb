class AddCapacityToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :capacity, :integer
    add_column :events, :name, :string
    add_column :events, :description, :text
    add_column :events, :category, :string
    add_column :events, :location, :string
    add_column :events, :longitude, :float
    add_column :events, :latitude, :float
    add_column :events, :skill_level, :string
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
  end
end
