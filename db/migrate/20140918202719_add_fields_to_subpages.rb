class AddFieldsToSubpages < ActiveRecord::Migration
  def change
  	add_column :subpages, :link_header, :string
  	add_column :subpages, :active, :bool
  end
end
