class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_column :users, :ra, :string
    add_column :users, :founding_date, :date
  end
end
