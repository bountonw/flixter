class Image < ApplicationRecord
	belongs_to :course

	 validates :image, file_size: { less_than: 2.megabytes }
end
