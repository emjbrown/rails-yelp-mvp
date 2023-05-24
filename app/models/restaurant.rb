class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
