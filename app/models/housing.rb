class Housing < ApplicationRecord
  belongs_to :budget

  validates :housing_payment, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :water, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :natural_gas, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :electricity, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :cable, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :trash, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
