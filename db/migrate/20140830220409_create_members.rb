class CreateMembers < ActiveRecord::Migration
	def change
		create_table :members do |t|
			t.string :first_name
			t.string :last_name
			t.string :email
			t.string :role
			t.string :admin
			t.boolean :needs_activation
			
			t.timestamps
		end
	end
end
