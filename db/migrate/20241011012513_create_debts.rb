class CreateDebts < ActiveRecord::Migration[7.2]
  def change
    create_table :debts do |t|
      t.float :car_payment
      t.float :student_loan
      t.float :credit_card
      t.float :personal_debt
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
