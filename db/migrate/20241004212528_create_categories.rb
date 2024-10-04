class CreateCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.decimal :planned
      t.decimal :spent
      t.references :budget, null: false, foreign_key: true
      t.integer :parent_id

      t.timestamps
    end
  end
end
