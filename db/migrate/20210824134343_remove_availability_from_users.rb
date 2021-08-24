class RemoveAvailabilityFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :availability, :boolean
  end
end
