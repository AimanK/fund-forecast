class CreateSavings < ActiveRecord::Migration[7.2]
  def change
    create_table :savings do |t|
      t.float :savings_amount
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
