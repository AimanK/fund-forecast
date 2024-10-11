class Budget < ApplicationRecord
    belongs_to :user
    has_one :income, dependent: :destroy
    has_one :giving, dependent: :destroy
    has_one :saving, dependent: :destroy
    has_one :housing, dependent: :destroy
    has_one :transportation, dependent: :destroy
    has_one :food, dependent: :destroy
    has_one :personal, dependent: :destroy
    has_one :lifestyle, dependent: :destroy
    has_one :health, dependent: :destroy
    has_one :insurance, dependent: :destroy
    has_one :debt, dependent: :destroy


    accepts_nested_attributes_for :income, :giving, :saving, :housing, :transportation, :food, :personal, :lifestyle, :health, :insurance, :debt
    
  end
  