class CreateSettings < ActiveRecord::Migration
	def change
		create_table :settings do |t|
			t.text :site_name
			t.text :site_title
			t.text :site_copyright
			t.string :admin_email
			t.string :booking_email
			t.integer :registration_mode
			t.boolean :subpages_active
			t.boolean :teams_active
			t.boolean :services_active

			t.timestamps
		end
	end
end
