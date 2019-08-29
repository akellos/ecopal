class AddTimeToTracker < ActiveRecord::Migration[5.2]
  def change
    add_column :trackers, :time, :string, array: true, default: []
  end
end
