class AddAvailabilityToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :availability, :boolean
  end
end
