class AddAvailabilityToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :availability, :boolean
  end
end
