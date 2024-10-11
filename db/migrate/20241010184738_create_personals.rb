class CreatePersonals < ActiveRecord::Migration[7.2]
  def change
    create_table :personals do |t|
      t.float :clothing
      t.float :phone
      t.float :fun_money
      t.float :hygiene
      t.float :subscriptions
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
