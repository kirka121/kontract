class CreateSubsections < ActiveRecord::Migration
	def change
    create_table :subsections do |t|
      t.string :title
      t.boolean :enabled
      t.integer :author
      t.belongs_to :user

      t.timestamps
    end
	end
end
