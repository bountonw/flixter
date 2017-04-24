class Course < ApplicationRecord
	belongs_to :user

	validates :title, presence: true, length: { in: 7..35 }
	validates :description, presence: true, length: { maximum: 500 }
	validates :cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
