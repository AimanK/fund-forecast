class Budget < ApplicationRecord
    has_many :categories, dependent: :destroy
    accepts_nested_attributes_for :categories, allow_destroy: true
  
    after_create :create_default_categories
  
    private
  
    def create_default_categories
      # Income
      income_category = categories.create(name: "Income")
      income_category.subcategories.create([{ name: "Paycheck 1", planned: 0.00 }, { name: "Paycheck 2", planned: 0.00 }])
  
      # Giving
      giving_category = categories.create(name: "Giving")
      giving_category.subcategories.create(name: "Charity", planned: 0.00)
  
      # Savings
      savings_category = categories.create(name: "Savings")
      savings_category.subcategories.create(name: "Emergency Fund", planned: 0.00)
  
      # Housing
      housing_category = categories.create(name: "Housing")
      housing_subcategories = ["Mortgage/Rent", "Water", "Natural Gas", "Electricity", "Cable", "Trash"]
      housing_subcategories.each { |sub| housing_category.subcategories.create(name: sub, planned: 0.00) }
  
      # Repeat for all other categories...
    end
  end
  