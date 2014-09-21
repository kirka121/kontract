class ChangeSettings < ActiveRecord::Migration
  def change
  	add_column :settings, :carousel_mode, :integer
  	add_column :settings, :carousel_transition, :integer
  	add_column :settings, :carousel_enabled, :boolean
  	add_column :settings, :header_mode, :integer
  	add_column :settings, :header_fade, :integer
  	add_column :settings, :header_enabled, :boolean
  	add_column :settings, :footer_mode, :integer
  	add_column :settings, :footer_fade, :integer
  	add_column :settings, :footer_enabled, :boolean
  end
end
