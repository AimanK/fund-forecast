class Budget < ApplicationRecord
    belongs_to :user
    has_one :income, dependent: :destroy
    has_one :giving
    has_one :saving
    has_one :housing
    has_one :transportation
    has_one :food
    has_one :personal
    has_one :lifestyle
    has_one :health
    has_one :insurance
    has_one :debt


    accepts_nested_attributes_for :income
  
    
  end
  