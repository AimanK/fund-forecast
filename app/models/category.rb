class Category < ApplicationRecord
  belongs_to :budget
  has_many :subcategories, class_name: "Category", foreign_key: "parent_id", dependent: :destroy
  belongs_to :parent, class_name: "Category", optional: true

  validates :name, presence: true
  validates :planned, numericality: { greater_than_or_equal_to: 0 }
end
