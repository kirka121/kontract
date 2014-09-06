class CreateSubpages < ActiveRecord::Migration
	def change
		create_table :subpages do |t|
			t.text :title
			t.string :user
			t.text :content

			t.timestamps
		end
	end
end
