class CreateSubpages < ActiveRecord::Migration
  def change
    create_table :subpages do |t|
      t.text :title
      t.integer :author
      t.text :content
      t.string :link_header
      t.boolean :active
      t.belongs_to :subsection
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
