class AddFeatureFieldToLink < ActiveRecord::Migration
  def self.up
    add_column :links, :feature_in_sidebar, :boolean, :default => false
  end

  def self.down
    remove_column :links, :feature_in_sidebar
  end
end
