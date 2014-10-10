class CreateFeedbacks < ActiveRecord::Migration
	def change
		create_table :feedbacks do |t|
			t.string :name
			t.string :email
			t.string :proj_name
			t.text :content
			
			t.timestamps
		end
	end
end
