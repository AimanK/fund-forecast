class CreateIncomes < ActiveRecord::Migration[7.2]
  def change
    create_table :incomes do |t|
      t.float :paycheck_1
      t.float :paycheck_2
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
