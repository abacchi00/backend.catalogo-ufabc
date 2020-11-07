class RemoveFoundingDateFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :founding_date
  end
end
