class Budget < ApplicationRecord
  has_many :categories, dependent: :destroy
  accepts_nested_attributes_for :categories, allow_destroy: true

  validates :month, presence: true
end
