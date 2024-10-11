class CreateHousings < ActiveRecord::Migration[7.2]
  def change
    create_table :housings do |t|
      t.float :housing_payment
      t.float :water
      t.float :natural_gas
      t.float :electricity
      t.float :cable
      t.float :trash
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
