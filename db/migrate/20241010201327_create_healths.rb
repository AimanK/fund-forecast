class CreateHealths < ActiveRecord::Migration[7.2]
  def change
    create_table :healths do |t|
      t.float :gym
      t.float :health_products
      t.float :doctor_visits
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
