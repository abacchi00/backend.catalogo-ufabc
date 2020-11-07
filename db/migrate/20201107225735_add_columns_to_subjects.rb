class AddColumnsToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :name, :string
    add_column :subjects, :code, :string
    add_column :subjects, :tpi, :string
    add_column :subjects, :recommendation, :string
    add_column :subjects, :goals, :string
    add_column :subjects, :content, :string
    add_column :subjects, :basic_bibliography, :string
    add_column :subjects, :complementary_bibliography, :string
  end
end
