class CreateFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :foods do |t|
      t.float :groceries
      t.float :restaurants
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
