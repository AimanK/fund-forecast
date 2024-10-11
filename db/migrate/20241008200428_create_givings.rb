class CreateGivings < ActiveRecord::Migration[7.2]
  def change
    create_table :givings do |t|
      t.float :charity
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
