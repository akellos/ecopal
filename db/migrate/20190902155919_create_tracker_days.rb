class CreateTrackerDays < ActiveRecord::Migration[5.2]
  def change
    create_table :tracker_days do |t|
      t.string :date
      t.boolean :completed, default: false
      t.references :tracker, foreign_key: true

      t.timestamps
    end
  end
end
