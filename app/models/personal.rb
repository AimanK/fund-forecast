class Personal < ApplicationRecord
  belongs_to :budget

  validates :clothing, presence: true, numericality: { greater_than_or_equal_to: 0 }  
  validates :phone, presence: true, numericality: { greater_than_or_equal_to: 0 } 
  validates :fun_money, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :hygiene, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :subscriptions, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
