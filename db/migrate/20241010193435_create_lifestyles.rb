class CreateLifestyles < ActiveRecord::Migration[7.2]
  def change
    create_table :lifestyles do |t|
      t.float :pet_care
      t.float :child_care
      t.float :entertainment
      t.float :miscellaneous
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
