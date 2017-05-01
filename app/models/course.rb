class Course < ApplicationRecord
	belongs_to :user
	has_many :sections
	has_many :images
	mount_uploader :image, ImageUploader

	validates :title, presence: true, length: { in: 7..35 }
	validates :description, presence: true, length: { maximum: 500 }
	validates :cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
