class AddBioToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :bio, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :preference, :string
    add_column :users, :verification, :boolean
    add_column :users, :weight, :integer
    add_column :users, :height, :integer
    add_column :users, :age, :integer
  end
end
