class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :category, inclusion: { in: CATEGORIES }
  validates :name, presence: { message: 'can not be empty' }
  validates :address, presence: { message: 'can not be empty' }

end
