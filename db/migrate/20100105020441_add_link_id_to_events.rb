class AddLinkIdToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :link_id, :integer
  end

  def self.down
    remove_column :events, :link_id
  end
end
