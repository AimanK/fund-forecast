class AddUserToBudgets < ActiveRecord::Migration[7.2]
  def change
    add_reference :budgets, :user, null: false, foreign_key: true
  end
end
