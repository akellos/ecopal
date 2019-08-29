class AddPendingToTracker < ActiveRecord::Migration[5.2]
  def change
    add_column :trackers, :pending, :string, array: true, default: []
  end
end
