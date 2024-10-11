class Insurance < ApplicationRecord
  belongs_to :budget

  validates :health_insurance, numericality: { greater_than_or_equal_to: 0 }
  validates :life_insurance, numericality: { greater_than_or_equal_to: 0 }
  validates :car_insurance, numericality: { greater_than_or_equal_to: 0 }
  validates :home_insurance, numericality: { greater_than_or_equal_to: 0 }
  validates :identity_insurance, numericality: { greater_than_or_equal_to: 0 }
end
