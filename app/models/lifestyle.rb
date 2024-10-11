class Lifestyle < ApplicationRecord
  belongs_to :budget

  validates :pet_care, presence: true, numericality: { greater_than_or_equal_to: 0 } 
  validates :child_care, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :entertainment, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :miscellaneous, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
