class Debt < ApplicationRecord
  belongs_to :budget

  validates :car_payment, numericality: { greater_than_or_equal_to: 0 }
  validates :student_loan, numericality: { greater_than_or_equal_to: 0 }
  validates :credit_card, numericality: { greater_than_or_equal_to: 0 }
  validates :personal_debt, numericality: { greater_than_or_equal_to: 0 }
end
