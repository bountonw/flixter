class AddDatetimeToCourses < ActiveRecord::Migration[5.0]
	def change_table
		add_column(:courses, :created_at, :datetime)
		add_column(:users, :updated_at, :datetime)
	end
end
