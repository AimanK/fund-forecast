class RemoveUnnecessaryColumnsFromBudgets < ActiveRecord::Migration[7.2]
  def change
      remove_column :budgets, :total_income, :decimal
      remove_column :budgets, :total_expenses, :decimal
  end
end
