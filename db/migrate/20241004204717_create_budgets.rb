class CreateBudgets < ActiveRecord::Migration[7.2]
  def change
    create_table :budgets do |t|
      t.date :month              # The "month" column will represent the budget's name in this case
      t.decimal :total_income, precision: 10, scale: 2  # For storing total income
      t.decimal :total_expenses, precision: 10, scale: 2  # For storing total expenses
      
      t.timestamps
    end
  end
end
