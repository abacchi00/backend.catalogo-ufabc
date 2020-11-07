class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects, id: :uuid do |t|
      t.timestamps
    end
  end
end
